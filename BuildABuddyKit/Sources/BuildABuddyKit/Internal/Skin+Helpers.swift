import CoreGraphics
import Foundation

extension Skin {
    var assets: [Asset] {
        return [neckAsset, headAsset, leftArmAsset, rightArmAsset, leftHandAsset, rightHandAsset, leftLegAsset, rightLegAsset]
    }

    private var headAsset: Asset {
        let name = "tint\(number)_head"
        let position = CGPoint(x: 213, y: 64)
        return Asset(name: name, position: position)
    }

    private var neckAsset: Asset {
        let name = "tint\(number)_neck"
        let position = CGPoint(x: 251, y: 208)
        return Asset(name: name, position: position)
    }

    private var leftArmAsset: Asset {
        let name = "tint\(number)_arm"
        let position = CGPoint(x: 100, y: 218)
        let rotation = Measurement<UnitAngle>(value: -30, unit: .degrees)
        return Asset(name: name, position: position, flipped: true, rotation: rotation)
    }

    private var rightArmAsset: Asset {
        let name = "tint\(number)_arm"
        let position = CGPoint(x: 283, y: 218)
        let rotation = Measurement<UnitAngle>(value: 30, unit: .degrees)
        return Asset(name: name, position: position, rotation: rotation)
    }
    private var leftHandAsset: Asset {
        let name = "tint\(number)_hand"
        let position = CGPoint(x: 129, y: 361)
        let rotation = Measurement<UnitAngle>(value: -45, unit: .degrees)
        return Asset(name: name, position: position, flipped: true, rotation: rotation)
    }

    private var rightHandAsset: Asset {
        let name = "tint\(number)_hand"
        let position = CGPoint(x: 377, y: 361)
        let rotation = Measurement<UnitAngle>(value: 45, unit: .degrees)
        return Asset(name: name, position: position, rotation: rotation)
    }

    private var leftLegAsset: Asset {
        let name = "tint\(number)_leg"
        let position = CGPoint(x: 202, y: 378)
        return Asset(name: name, position: position, flipped: true)
    }
    
    private var rightLegAsset: Asset {
        let name = "tint\(number)_leg"
        let position = CGPoint(x: 304, y: 378)
        return Asset(name: name, position: position)
    }

    private var number: Int {
        switch self {
        case .tint1:
            return 1
        case .tint2:
            return 2
        case .tint3:
            return 3
        case .tint4:
            return 4
        case .tint5:
            return 5
        case .tint6:
            return 6
        case .tint7:
            return 7
        case .tint8:
            return 8
        }
    }
}
