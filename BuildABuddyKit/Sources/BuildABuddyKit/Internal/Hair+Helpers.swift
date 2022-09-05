import CoreGraphics

extension Hair {
    var asset: Asset {
        let name = "\(color.name)Hair\(style.number)"
        return Asset(name: name, position: style.position)
    }
}

private extension Hair.Style {
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
        case .style9:
            return 9
        case .style10:
            return 10
        case .style11:
            return 11
        case .style12:
            return 12
        case .style13:
            return 13
        case .style14:
            return 14
        }
    }

    var position: CGPoint {
        switch self {
        case .style1:
            return CGPoint(x: 222, y: 51)
        case .style2:
            return CGPoint(x: 221, y: 37)
        case .style3:
            return CGPoint(x: 221, y: 47)
        case .style4:
            return CGPoint(x: 221, y: 54)
        case .style5:
            return CGPoint(x: 221, y: 44)
        case .style6:
            return CGPoint(x: 221, y: 52)
        case .style7:
            return CGPoint(x: 221, y: 54)
        case .style8:
            return CGPoint(x: 221, y: 116)
        case .style9:
            return CGPoint(x: 223, y: 49)
        case .style10:
            return CGPoint(x: 223, y: 51)
        case .style11:
            return CGPoint(x: 222, y: 50)
        case .style12:
            return CGPoint(x: 223, y: 49)
        case .style13:
            return CGPoint(x: 216, y: 49)
        case .style14:
            return CGPoint(x: 217, y: 51)
        }
    }
}

private extension Hair.Color {
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
