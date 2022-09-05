import CoreGraphics

extension Pants {
    var assets: [Asset] {
        return [leftLegAsset, rightLegAsset, beltAsset]
    }

    private var beltAsset: Asset {
        let name = "pants\(color.name)\(belt.number)"
        let position = CGPoint(x: 223, y: 383)
        return Asset(name: name, position: position)
    }

    private var leftLegAsset: Asset {
        let name = "pants\(color.name)_\(length.name)"
        let position = CGPoint(x: length.leftXPosition, y: length.yPosition)
        return Asset(name: name, position: position, flipped: true)
    }
    
    private var rightLegAsset: Asset {
        let name = "pants\(color.name)_\(length.name)"
        let position = CGPoint(x: length.rightXPosition, y: length.yPosition)
        return Asset(name: name, position: position)
    }
}

private extension Pants.Color {
    var name: String {
        switch self {
        case .blue1:
            return "Blue1"
        case .blue2:
            return "Blue2"
        case .brown:
            return "Brown"
        case .green:
            return "Green"
        case .grey:
            return "Grey"
        case .lightBlue:
            return "LightBlue"
        case .navy:
            return "Navy"
        case .pine:
            return "Pine"
        case .red:
            return "Red"
        case .tan:
            return "Tan"
        case .white:
            return "White"
        case .yellow:
            return "Yellow"
        }
    }
}

private extension Pants.Length {
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
            return 199
        case .short:
            return 197
        case .shorter:
            return 203
        }
    }

    var rightXPosition: CGFloat {
        switch self {
        case .long:
            return 289
        case .short:
            return 296
        case .shorter:
            return 293
        }
    }

    var yPosition: CGFloat {
        switch self {
        case .long:
            return 370
        case .short:
            return 395
        case .shorter:
            return 381
        }
    }
}

private extension Pants.Belt {
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
        }
    }
}
