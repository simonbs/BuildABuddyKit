import UIKit

/// Renders a buddy to an image.
///
/// The BuddyRenderer can be used to render an instance of <doc:Buddy> into a UIImage. The appearance of the buddy should be configured before it is rendered.
///
/// Get started by creating an instance of `BuddyRenderer`, set a background color, and pass it an instance of <doc:Buddy> to render.
///
/// ```swift
/// let buddy = Buddy()
/// let renderer = BuddyRenderer(backgroundColor: .systemPurple)
/// let image = renderer.render(buddy)
/// ```
public struct BuddyRenderer {
    /// The background color of the rendered image.
    ///
    /// Set the background color to `nil` or `UIColor.clear` to render a transparent image. Defaults to `nil`.
    public var backgroundColor: UIColor?
    /// The size of the canvas.
    ///
    /// The image returned by <doc:render(_:)> will have this size.
    public var canvasSize: CGSize

    /// <#Description#>
    /// - Parameters:
    ///   - backgroundColor: <#backgroundColor description#>
    ///   - canvasSize: <#canvasSize description#>
    public init(backgroundColor: UIColor? = nil, canvasSize: CGSize = CGSize(width: 600, height: 600)) {
        self.backgroundColor = backgroundColor
        self.canvasSize = canvasSize
    }

    public func render(_ buddy: Buddy) -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        format.opaque = false
        let renderer = UIGraphicsImageRenderer(size: canvasSize, format: format)
        let data = renderer.pngData { context in
            let cgContext = context.cgContext
            let rect = CGRect(origin: .zero, size: canvasSize)
            cgContext.clear(rect)
            cgContext.setFillColor(UIColor.clear.cgColor)
            cgContext.fill(rect)
            if let backgroundColor = backgroundColor {
                cgContext.setFillColor(backgroundColor.cgColor)
                cgContext.fill(rect)
            }
            for asset in buddy.assets {
                if let image = asset.image {
                    // Rotate the image and then render the rotated image. This makes it easier to transfer values from Sketch to code.
                    let transformedImage = image.flipped(asset.flipped).rotated(by: asset.rotation)
                    cgContext.saveGState()
                    transformedImage.draw(at: asset.position)
                    cgContext.restoreGState()
                }
            }
        }
        return UIImage(data: data)!
    }
}
