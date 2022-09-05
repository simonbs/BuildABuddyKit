import CoreGraphics

extension Nose {
    func asset(for skin: Skin) -> Asset {
        let name = "tint\(skin.number)Nose\(number)"
        return Asset(name: name, position: position)
    }
}

private extension Nose {
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

    var position: CGPoint {
        switch self {
        case .style1:
            return CGPoint(x: 284, y: 165)
        case .style2:
            return CGPoint(x: 287, y: 164)
        case .style3:
            return CGPoint(x: 288, y: 169)
        }
    }
}

private extension Skin {
    var number: Int {
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
