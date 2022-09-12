import BuildABuddyKit

extension Eye.Color: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
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

extension Eye.Size: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .small:
            return "Small"
        case .large:
            return "Large"
        }
    }
}
