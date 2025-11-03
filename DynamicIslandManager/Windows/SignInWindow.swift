import SwiftUI
import AppKit

class SignInWindow: NSWindow {
    init(driveViewModel: DriveViewModel) {
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: 400, height: 350),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        )

        self.title = "Sign In"
        self.isReleasedWhenClosed = false
        self.center()
        self.setFrameAutosaveName("SignInWindow")

        // window on all spaces
        self.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]

        // set content
        self.contentView = NSHostingView(rootView: SignInView(driveViewModel: driveViewModel))
    }
}
