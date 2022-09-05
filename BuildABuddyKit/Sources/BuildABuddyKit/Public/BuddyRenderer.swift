import UIKit

public enum BuddyRenderer {
    public static func render(_ buddy: Buddy) -> UIImage {
        let canvasSize = CGSize(width: 600, height: 600)
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        let renderer = UIGraphicsImageRenderer(size: canvasSize, format: format)
        return renderer.image { context in
            for asset in buddy.assets {
                if let image = asset.image {
                    // Rotate the image and then render the rotated image. This makes it easier to transfer values from Sketch to code.
                    let cgContext = context.cgContext
                    let transformedImage = image.flipped(asset.flipped).rotated(by: asset.rotation)
                    cgContext.saveGState()
                    transformedImage.draw(at: asset.position)
                    cgContext.restoreGState()
                }
            }
        }
    }
}

private extension UIImage {
    func flipped(_ flipped: Bool) -> UIImage {
        guard flipped else {
            return self
        }
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        let renderer = UIGraphicsImageRenderer(size: size, format: format)
        return renderer.image { context in
            let cgContext = context.cgContext
            cgContext.scaleBy(x: -1, y: 1)
            cgContext.translateBy(x: -size.width, y: 0)
            draw(at: .zero)
        }
    }

    func rotated(by rotation: Measurement<UnitAngle>) -> UIImage {
        guard rotation != Measurement(value: 0, unit: .radians) else {
            return self
        }
        let radians = rotation.converted(to: .radians)
        let bounds = CGRect(origin: .zero, size: size)
        let newBounds = bounds.applying(CGAffineTransform(rotationAngle: radians.value))
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        let renderer = UIGraphicsImageRenderer(size: newBounds.size, format: format)
        return renderer.image { context in
            let cgContext = context.cgContext
            cgContext.translateBy(x: newBounds.width / 2, y: newBounds.height / 2)
            cgContext.rotate(by: CGFloat(radians.value))
            let position = CGPoint(x: -size.width / 2, y: -size.height / 2)
            draw(at: position)
        }
    }
}
