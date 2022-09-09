import CoreGraphics

extension Shoe {
    var assets: [Asset] {
        return [leftAsset, rightAsset]
    }

    private var leftAsset: Asset {
        let name = "\(color.name)Shoe\(style.number)"
        let position = CGPoint(x: 166, y: 516)
        return Asset(name: name, position: position, flipped: true)
    }
    
    private var rightAsset: Asset {
        let name = "\(color.name)Shoe\(style.number)"
        let position = CGPoint(x: 339, y: 516)
        return Asset(name: name, position: position)
    }
}

private extension Shoe.Style {
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
        }
    }
}

private extension Shoe.Color {
    var name: String {
        switch self {
        case .black:
            return "black"
        case .brown1:
            return "brown"
        case .brown2:
            return "brown2"
        case .grey:
            return "grey"
        case .red:
            return "red"
        case .tan:
            return "tan"
        }
    }
}
