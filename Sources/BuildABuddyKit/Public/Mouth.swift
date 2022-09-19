public enum Mouth: CaseIterable {
    case glad
    case happy
    case oh
    case sad
    case straight
    case teethLower
    case teethUpper

    public static var random: Self {
        return allCases.randomElement()!
    }
}
