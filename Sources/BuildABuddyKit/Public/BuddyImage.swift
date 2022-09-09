import SwiftUI

/// View showing the image representation of a buddy.
public struct BuddyImage: View {
    private let buddy: Buddy

    /// Creates a `BuddyImage` given a buddy.
    /// - Parameter buddy: The buddy to display.
    public init(buddy: Buddy) {
        self.buddy = buddy
    }

    /// The content and behavior of the view.
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
