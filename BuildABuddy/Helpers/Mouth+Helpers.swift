import BuildABuddyKit

extension Mouth: Identifiable {
    public var id: Self {
        return self
    }

    var title: String {
        switch self {
        case .glad:
            return "Glad"
        case .happy:
            return "Happy"
        case .oh:
            return "Oh"
        case .sad:
            return "Sad"
        case .straight:
            return "Straight"
        case .teethLower:
            return "Lower Teeth"
        case .teethUpper:
            return "Upper Teeth"
        }
    }
}
