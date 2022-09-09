import CoreGraphics
import Foundation

extension Shirt {
    func assets(for pose: Pose) -> [Asset] {
        if let sleeves = sleeves {
            return [sleeves.leftAsset, sleeves.rightAsset(for: pose), front.asset]
        } else {
            return [front.asset]
        }
    }
}

private extension Shirt.Front {
    var asset: Asset {
        let name = "\(color.name)Shirt\(style.number)"
        let position = CGPoint(x: 223, y: 216)
        return Asset(name: name, position: position)
    }
}

private extension Shirt.Sleeve {
    var leftAsset: Asset {
        let name = "\(color.name)Arm_\(length.name)"
        let position = CGPoint(x: length.leftXPosition, y: 215)
        let rotation = Measurement<UnitAngle>(value: -30, unit: .degrees)
        return Asset(name: name, position: position, flipped: true, rotation: rotation)
    }
    
    func rightAsset(for pose: Pose) -> Asset {
        let name = "\(color.name)Arm_\(length.name)"
        let position = length.rightPosition(for: pose)
        let rotation = length.rightRotation(for: pose)
        let flipped = pose == .wave
        return Asset(name: name, position: position, flipped: flipped, rotation: rotation)
    }
}

private extension Shirt.Front.Style {
    var number: Int {
        switch self {
        case .style1:
            return 1
        case .style2:
            return 2
        case .style3:
            return 3
        case .style4:
            return 4
        case .style5:
            return 5
        case .style6:
            return 6
        case .style7:
            return 7
        case .style8:
            return 8
        }
    }
}

private extension Shirt.Sleeve.Length {
    var name: String {
        switch self {
        case .long:
            return "long"
        case .short:
            return "short"
        case .shorter:
            return "shorter"
        }
    }

    var leftXPosition: CGFloat {
        switch self {
        case .long:
            return 100
        case .short:
            return 146
        case .shorter:
            return 192
        }
    }

    func rightPosition(for pose: Pose) -> CGPoint {
        switch (pose, self) {
        case (.stand, .long):
            return CGPoint(x: 281, y: 215)
        case (.stand, .short):
            return CGPoint(x: 302, y: 215)
        case (.stand, .shorter):
            return CGPoint(x: 308, y: 215)
        case (.wave, .long):
            return CGPoint(x: 296, y: 110)
        case (.wave, .short):
            return CGPoint(x: 322, y: 166)
        case (.wave, .shorter):
            return CGPoint(x: 326, y: 202)
        }
    }

    func rightRotation(for pose: Pose) -> Measurement<UnitAngle> {
        switch (pose, self) {
        case (.stand, _):
            return Measurement<UnitAngle>(value: 30, unit: .degrees)
        case (.wave, .long):
            return Measurement<UnitAngle>(value: 155, unit: .degrees)
        case (.wave, .short), (.wave, .shorter):
            return Measurement<UnitAngle>(value: 152, unit: .degrees)
        }
    }
}

private extension Shirt.Color {
    var name: String {
        switch self {
        case .blue:
            return "blue"
        case .green:
            return "green"
        case .grey:
            return "grey"
        case .navy:
            return "navy"
        case .pine:
            return "pine"
        case .red:
            return "red"
        case .white:
            return "white"
        case .yellow:
            return "yellow"
        }
    }
}
