import UIKit

/// Renders a buddy to an image.
///
/// The BuddyRenderer can be used to render an instance of ``Buddy`` into a UIImage. The appearance of the buddy should be configured before it is rendered.
///
/// Get started by creating an instance of `BuddyRenderer` by passing it a background color and a canvas size. Then call ``render(_:)`` and pass it an instance of ``Buddy`` to render an image.
///
/// ```swift
/// let buddy = Buddy()
/// let canvasSize = CGSize(width: 600, height: 600)
/// let renderer = BuddyRenderer(backgroundColor: .systemPurple, canvasSize: canvasSize)
/// let image = renderer.render(buddy)
/// ```
///
/// > Note: The default canvas size is 600 by 600. This canvas size provides for the best results.
///
/// Here's an image produced by an instance of `BuddyRenderer`:
///
/// ![](buddyrenderer-output-example.jpeg)
///
/// > Warning: Providing a negative canvas size has undefined behavior.
public struct BuddyRenderer {
    /// The background color of the rendered image.
    ///
    /// Set the background color to `nil` or `UIColor.clear` to render a transparent image. Defaults to `nil`.
    public var backgroundColor: UIColor?
    /// The size of the canvas.
    ///
    /// The image returned by ``render(_:)`` will have this size.
    public var canvasSize: CGSize

    /// Creates a `BuddyRenderer` given a background color and a canvas size.
    /// - Parameters:
    ///   - backgroundColor: The background color of the canvas. Defaults to `nil` for a transparent canvas.
    ///   - canvasSize: The size of the canvas. Defaults to 600 by 600.
    public init(backgroundColor: UIColor? = nil, canvasSize: CGSize = CGSize(width: 600, height: 600)) {
        self.backgroundColor = backgroundColor
        self.canvasSize = canvasSize
    }

    /// Renders the given buddy.
    ///
    /// Takes an instance of ``Buddy`` as input and renders it to the image. The size and background color of the image is specified by ``canvasSize`` and ``backgroundColor``.
    ///
    /// - Parameter buddy: The buddy to render.
    /// - Returns: A UIImage representation of the rendered image.
    public func render(_ buddy: Buddy) -> UIImage {
        let scale = CGPoint(x: canvasSize.width / 600, y: canvasSize.height / 600)
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
                    cgContext.scaleBy(x: scale.x, y: scale.y)
                    transformedImage.draw(at: asset.position)
                    cgContext.restoreGState()
                }
            }
        }
        return UIImage(data: data)!
    }
}
