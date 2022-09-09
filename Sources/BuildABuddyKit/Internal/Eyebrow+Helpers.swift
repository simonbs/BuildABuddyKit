import CoreGraphics
import Foundation

extension Eyebrow {
    var assets: [Asset] {
        return [leftAsset, rightAsset]
    }

    private var leftAsset: Asset {
        let name = "\(color.name)Brow\(style.number)"
        return Asset(name: name, position: style.leftPosition, flipped: true, rotation: style.leftRotation)
    }

    private var rightAsset: Asset {
        let name = "\(color.name)Brow\(style.number)"
        return Asset(name: name, position: style.rightPosition, rotation: style.rightRotation)
    }
}

private extension Eyebrow.Style {
    var number: Int {
        switch self {
        case .style1:
            return 1
        case .style2:
            return 2
        case .style3:
            return 3
        }
    }

    var leftPosition: CGPoint {
        switch self {
        case .style1:
            return CGPoint(x: 242, y: 122)
        case .style2:
            return CGPoint(x: 244, y: 127)
        case .style3:
            return CGPoint(x: 244, y: 119)
        }
    }

    var rightPosition: CGPoint {
        switch self {
        case .style1:
            return CGPoint(x: 316, y: 127)
        case .style2:
            return CGPoint(x: 314, y: 135)
        case .style3:
            return CGPoint(x: 313, y: 128)
        }
    }

    var leftRotation: Measurement<UnitAngle> {
        switch self {
        case .style1:
            return Measurement(value: -13, unit: .degrees)
        case .style2:
            return Measurement(value: -8, unit: .degrees)
        case .style3:
            return Measurement(value: -26, unit: .degrees)
        }
    }

    var rightRotation: Measurement<UnitAngle> {
        switch self {
        case .style1:
            return Measurement(value: 16, unit: .degrees)
        case .style2:
            return Measurement(value: 8, unit: .degrees)
        case .style3:
            return Measurement(value: 23, unit: .degrees)
        }
    }
}

private extension Eyebrow.Color {
    var name: String {
        switch self {
        case .black:
            return "black"
        case .blonde:
            return "blonde"
        case .brown1:
            return "brown1"
        case .brown2:
            return "brown2"
        case .grey:
            return "grey"
        case .red:
            return "red"
        case .tan:
            return "tan"
        case .white:
            return "white"
        }
    }
}
