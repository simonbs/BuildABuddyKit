import BuildABuddyKit

extension Shirt.Color: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .blue:
            return "Blue"
        case .green:
            return "Green"
        case .grey:
            return "Grey"
        case .navy:
            return "Navy"
        case .pine:
            return "Pine"
        case .red:
            return "Red"
        case .white:
            return "White"
        case .yellow:
            return "Yellow"
        }
    }
}

extension Shirt.Body.Style: Identifiable {
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
        }
    }
}

extension Shirt.Arms.Length: Identifiable {
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

