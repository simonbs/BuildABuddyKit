import CoreGraphics

extension Eye {
    var assets: [Asset] {
        return [leftAsset, rightAsset]
    }

    private var leftAsset: Asset {
        let name = "eye\(color.name)_\(size.name)"
        return Asset(name: name, position: size.leftPosition)
    }
    
    private var rightAsset: Asset {
        let name = "eye\(color.name)_\(size.name)"
        return Asset(name: name, position: size.rightPosition)
    }
}

private extension Eye.Size {
    var name: String {
        switch self {
        case .small:
            return "small"
        case .large:
            return "large"
        }
    }

    var leftPosition: CGPoint {
        switch self {
        case .small:
            return CGPoint(x: 259, y: 150)
        case .large:
            return CGPoint(x: 255, y: 147)
        }
    }

    var rightPosition: CGPoint {
        switch self {
        case .small:
            return CGPoint(x: 324, y: 155)
        case .large:
            return CGPoint(x: 321, y: 152)
        }
    }
}

private extension Eye.Color {
    var name: String {
        switch self {
        case .black:
            return "Black"
        case .blue:
            return "Blue"
        case .brown:
            return "Brown"
        case .green:
            return "Green"
        case .pine:
            return "Pine"
        }
    }
}
