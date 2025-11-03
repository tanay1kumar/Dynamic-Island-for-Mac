import SwiftUI

enum DesignConstants {
    // size stuff
    static let collapsedWidth: CGFloat = 170
    static let collapsedHeight: CGFloat = 32
    static let expandedWidth: CGFloat = 380
    static let expandedHeight: CGFloat = 256

    // rounded corners
    static let collapsedCornerRadius: CGFloat = 10
    static let expandedCornerRadius: CGFloat = 24

    // grid layout
    static let cubeSize: CGFloat = 100
    static let cubeSpacing: CGFloat = 16

    // colors
    static let islandBackgroundColor = Color.black.opacity(0.8)
    static let cubeBackgroundColor = Color.white.opacity(0.1)

    // shadows
    static let shadowColor = Color.black.opacity(0.25)
    static let shadowRadius: CGFloat = 12
    static let shadowY: CGFloat = 6

    // padding
    static let islandPadding: CGFloat = 20
    static let cubePadding: CGFloat = 8
    static let windowPadding: CGFloat = 20

    // hover effects
    static let hoverGlowOpacity: Double = 0.15
    static let hoverGlowBlurRadius: CGFloat = 8
    static let hoverBrightness: Double = 0.1
    static let hoverScale: CGFloat = 1.05
    static let hoverEntryDebounce: Double = 0.1
    static let hoverExitDelay: Double = 0.3
}
