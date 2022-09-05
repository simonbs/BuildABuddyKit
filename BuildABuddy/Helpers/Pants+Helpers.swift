import BuildABuddyKit

extension Pants.Color: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .blue1:
            return "Blue 1"
        case .blue2:
            return "Blue 2"
        case .brown:
            return "Brown"
        case .green:
            return "Green"
        case .grey:
            return "Grey"
        case .lightBlue:
            return "Light Blue"
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

extension Pants.Length: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .long:
            return "Long"
        case .short:
            return "Short"
        case .shorter:
            return "Shorter"
        }
    }
}

extension Pants.Belt: Identifiable {
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
        }
    }
}

