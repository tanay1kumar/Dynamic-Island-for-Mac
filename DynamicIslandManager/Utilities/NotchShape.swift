import SwiftUI

struct NotchShape: Shape {
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.width
        let height = rect.height

        // top left
        path.move(to: CGPoint(x: 0, y: 0))

        // top edge
        path.addLine(to: CGPoint(x: width, y: 0))

        // right side
        path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
        path.addArc(
            center: CGPoint(x: width - cornerRadius, y: height - cornerRadius),
            radius: cornerRadius,
            startAngle: .degrees(0),
            endAngle: .degrees(90),
            clockwise: false
        )

        // bottom edge
        path.addLine(to: CGPoint(x: cornerRadius, y: height))

        // bottom left corner
        path.addArc(
            center: CGPoint(x: cornerRadius, y: height - cornerRadius),
            radius: cornerRadius,
            startAngle: .degrees(90),
            endAngle: .degrees(180),
            clockwise: false
        )

        // left side
        path.addLine(to: CGPoint(x: 0, y: 0))

        return path
    }
}
