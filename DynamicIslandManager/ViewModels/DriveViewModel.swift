import Foundation
import GoogleSignIn

class DriveViewModel: ObservableObject {
    @Published var driveService = GoogleDriveService()

    func signIn() async {
        do {
            try await driveService.signIn()
        } catch {
            print("Sign-in error: \(error.localizedDescription)")
        }
    }

    func signOut() {
        driveService.signOut()
    }
}
