import BuildABuddyKit

extension Eyebrow.Color: Identifiable {
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

extension Eyebrow.Style: Identifiable {
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
        }
    }
}
