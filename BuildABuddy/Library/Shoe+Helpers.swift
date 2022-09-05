import BuildABuddyKit

extension Shoe.Color: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .black:
            return "Black"
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
        }
    }
}

extension Shoe.Style: Identifiable {
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
        }
    }
}
