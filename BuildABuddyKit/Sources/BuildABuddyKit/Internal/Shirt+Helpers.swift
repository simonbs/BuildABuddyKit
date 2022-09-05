import CoreGraphics
import Foundation

extension Shirt {
    var assets: [Asset] {
        if let arms = arms {
            return [arms.leftAsset, arms.rightAsset, body.asset]
        } else {
            return [body.asset]
        }
    }
}

private extension Shirt.Body {
    var asset: Asset {
        let name = "\(color.name)Shirt\(style.number)"
        let position = CGPoint(x: 223, y: 216)
        return Asset(name: name, position: position)
    }
}

private extension Shirt.Arms {
    var leftAsset: Asset {
        let name = "\(color.name)Arm_\(length.name)"
        let position = CGPoint(x: length.leftXPosition, y: 215)
        let rotation = Measurement<UnitAngle>(value: -30, unit: .degrees)
        return Asset(name: name, position: position, flipped: true, rotation: rotation)
    }
    
    var rightAsset: Asset {
        let name = "\(color.name)Arm_\(length.name)"
        let position = CGPoint(x: length.rightXPosition, y: 215)
        let rotation = Measurement<UnitAngle>(value: 30, unit: .degrees)
        return Asset(name: name, position: position, rotation: rotation)
    }
}

private extension Shirt.Body.Style {
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

private extension Shirt.Arms.Length {
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

    var rightXPosition: CGFloat {
        switch self {
        case .long:
            return 281
        case .short:
            return 302
        case .shorter:
            return 308
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
