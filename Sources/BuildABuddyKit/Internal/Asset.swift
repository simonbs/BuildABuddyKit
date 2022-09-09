import UIKit

struct Asset {
    let name: String
    let position: CGPoint
    let flipped: Bool
    let rotation: Measurement<UnitAngle>
    var image: UIImage? {
        return UIImage(named: name, in: .module, with: nil)
    }

    init(name: String, position: CGPoint, flipped: Bool = false, rotation: Measurement<UnitAngle> = .init(value: 0, unit: .degrees)) {
        self.name = name
        self.position = position
        self.flipped = flipped
        self.rotation = rotation
    }
}
