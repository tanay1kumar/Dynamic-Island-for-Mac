import SwiftUI

struct CubeView: View {
    let cubeType: CubeType
    @State private var isHovered = false

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: cubeType.icon)
                .font(.system(size: 32, weight: .medium))
                .foregroundColor(.white)

            Text(cubeType.title)
                .font(.system(size: 11, weight: .medium))
                .foregroundColor(.white.opacity(0.8))
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
        .frame(width: DesignConstants.cubeSize, height: DesignConstants.cubeSize)
        .background(
            RoundedRectangle(cornerRadius: DesignConstants.cubePadding)
                .fill(DesignConstants.cubeBackgroundColor)
        )
        .scaleEffect(isHovered ? DesignConstants.hoverScale : 1.0)
        .brightness(isHovered ? DesignConstants.hoverBrightness : 0)
        .animation(AnimationConstants.spring, value: isHovered)
        .onHover { hovering in
            isHovered = hovering
        }
    }
}

#Preview {
    ZStack {
        Color.black
        HStack(spacing: 16) {
            CubeView(cubeType: .upload)
            CubeView(cubeType: .convert)
            CubeView(cubeType: .uploadCount)
        }
    }
}
