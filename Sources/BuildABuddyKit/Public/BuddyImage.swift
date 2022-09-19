import SwiftUI

public struct BuddyImage: View {
    private let buddy: Buddy

    public init(_ buddy: Buddy) {
        self.buddy = buddy
    }

    public var body: some View {
        Image(uiImage: renderImage()).resizable()
    }
}

private extension BuddyImage {
    private func renderImage() -> UIImage {
        let canvasSize = CGSize(width: 600, height: 600)
        let renderer = BuddyRenderer(canvasSize: canvasSize)
        return renderer.render(buddy)
    }
}
