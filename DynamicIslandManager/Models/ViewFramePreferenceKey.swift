import SwiftUI

struct ViewFramePreferenceKey: PreferenceKey {
    typealias Value = [CubeType: Anchor<CGRect>]

    static var defaultValue: Value { [:] }

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.merge(nextValue()) { $1 }
    }
}
