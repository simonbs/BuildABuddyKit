import BuildABuddyKit

extension Hair.Color: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .black:
            return "Black"
        case .blonde:
            return "Blonde"
        case .brown1:
            return "Brown 1"
        case .brown2:
            return "Brown 2"
        case .grey:
            return "Grey"
        case .red:
            return "Red"
        case .tan:
            return "Tan"
        case .white:
            return "White"
        }
    }
}

extension Hair.Style: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .style1:
            return "Style 1"
        case .style2:
            return "Style 2"
        case .style3:
            return "Style 3"
        case .style4:
            return "Style 4"
        case .style5:
            return "Style 5"
        case .style6:
            return "Style 6"
        case .style7:
            return "Style 7"
        case .style8:
            return "Style 8"
        case .style9:
            return "Style 9"
        case .style10:
            return "Style 10"
        case .style11:
            return "Style 11"
        case .style12:
            return "Style 12"
        case .style13:
            return "Style 13"
        case .style14:
            return "Style 14"
        }
    }
}
