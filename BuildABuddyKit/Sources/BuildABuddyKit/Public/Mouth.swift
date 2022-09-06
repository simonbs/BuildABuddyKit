/// The mouth of a buddy.
public enum Mouth: CaseIterable {
    /// A closed mouth with an upwards smile.
    case glad
    /// An open mouth with teeth showing.
    case happy
    /// A circular mouth with a surprised look.
    case oh
    /// A closed mouth pointing downwards.
    case sad
    /// A closed and straight mouth.
    case straight
    /// An open mouth showing the lower teeth.
    case teethLower
    /// An open mouth showing the upper teeth.
    case teethUpper

    /// A random mouth.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
