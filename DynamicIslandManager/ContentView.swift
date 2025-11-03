import SwiftUI

struct ContentView: View {
    @EnvironmentObject var driveViewModel: DriveViewModel

    var body: some View {
        IslandView(driveService: driveViewModel.driveService)
            .padding(DesignConstants.windowPadding / 2)
    }
}

#Preview {
    ContentView()
}
