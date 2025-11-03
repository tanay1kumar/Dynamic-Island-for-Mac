import Foundation

enum ZipError: LocalizedError {
    case creationFailed
    case noFilesToZip
    case invalidPath

    var errorDescription: String? {
        switch self {
        case .creationFailed:
            return "Failed to create zip archive"
        case .noFilesToZip:
            return "No files provided to zip"
        case .invalidPath:
            return "Invalid file path"
        }
    }
}

class ZipUtility {
    static func zipFiles(_ files: [FileItem]) throws -> URL {
        guard !files.isEmpty else {
            throw ZipError.noFilesToZip
        }

        // create temp dir
        let tempDir = FileManager.default.temporaryDirectory
        let zipDirName = "zip_\(UUID().uuidString)"
        let zipDir = tempDir.appendingPathComponent(zipDirName)

        // make directory
        try FileManager.default.createDirectory(at: zipDir, withIntermediateDirectories: true)

        print("🗜️  Creating zip archive with \(files.count) file(s)")

        // copy files
        for file in files {
            let destinationURL = zipDir.appendingPathComponent(file.name)
            try FileManager.default.copyItem(at: file.url, to: destinationURL)
        }

        // zip filename with timestamp
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd_HH-mm-ss"
        let timestamp = dateFormatter.string(from: Date())
        let zipFileName = "files_\(timestamp).zip"
        let zipURL = tempDir.appendingPathComponent(zipFileName)

        // run ditto to create zip
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/bin/ditto")
        process.arguments = ["-c", "-k", "--sequesterRsrc", zipDir.path, zipURL.path]

        let pipe = Pipe()
        process.standardOutput = pipe
        process.standardError = pipe

        do {
            try process.run()
            process.waitUntilExit()

            if process.terminationStatus != 0 {
                let data = pipe.fileHandleForReading.readDataToEndOfFile()
                let output = String(data: data, encoding: .utf8) ?? "Unknown error"
                print("❌ Zip creation failed: \(output)")

                // Clean up temp directory
                try? FileManager.default.removeItem(at: zipDir)
                throw ZipError.creationFailed
            }

            // check if zip created
            guard FileManager.default.fileExists(atPath: zipURL.path) else {
                try? FileManager.default.removeItem(at: zipDir)
                throw ZipError.creationFailed
            }

            let fileSize = try FileManager.default.attributesOfItem(atPath: zipURL.path)[.size] as? Int64 ?? 0
            let sizeFormatted = ByteCountFormatter.string(fromByteCount: fileSize, countStyle: .file)

            print("✅ Zip created successfully: \(zipFileName) (\(sizeFormatted))")

            // cleanup temp dir
            try? FileManager.default.removeItem(at: zipDir)

            return zipURL

        } catch {
            // cleanup
            try? FileManager.default.removeItem(at: zipDir)
            print("❌ Failed to create zip: \(error.localizedDescription)")
            throw ZipError.creationFailed
        }
    }

    static func cleanupTempFile(at url: URL) {
        do {
            if FileManager.default.fileExists(atPath: url.path) {
                try FileManager.default.removeItem(at: url)
                print("🗑️  Cleaned up temp file: \(url.lastPathComponent)")
            }
        } catch {
            print("⚠️  Failed to cleanup temp file: \(error.localizedDescription)")
        }
    }
}
