import SwiftUI

struct CollapsedView: View {
    @ObservedObject var viewModel: IslandViewModel

    var body: some View {
        // empty view just for morphing background
        // drag detection happens in islandview
        EmptyView()
    }
}

#Preview {
    CollapsedView(viewModel: IslandViewModel())
        .background(Color.black)
}
