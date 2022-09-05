import BuildABuddyKit

extension Skin: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .tint1:
            return "Tint 1"
        case .tint2:
            return "Tint 2"
        case .tint3:
            return "Tint 3"
        case .tint4:
            return "Tint 4"
        case .tint5:
            return "Tint 5"
        case .tint6:
            return "Tint 6"
        case .tint7:
            return "Tint 7"
        case .tint8:
            return "Tint 8"
        }
    }
}
