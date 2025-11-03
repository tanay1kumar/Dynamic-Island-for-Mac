import SwiftUI

enum AnimationConstants {
    // spring animation values
    static let springResponse: Double = 0.4
    static let springDamping: Double = 0.7

    // durations
    static let expandDuration: Double = 0.4
    static let collapseDuration: Double = 0.3

    // helper funcs
    static var spring: Animation {
        .spring(response: springResponse, dampingFraction: springDamping)
    }

    static var expand: Animation {
        .spring(response: springResponse, dampingFraction: springDamping)
    }

    static var collapse: Animation {
        .spring(response: springResponse, dampingFraction: springDamping)
            .speed(expandDuration / collapseDuration)
    }
}
