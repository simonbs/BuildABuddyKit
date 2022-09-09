/// The mouth of a buddy.
public enum Mouth: CaseIterable {
    /// A closed mouth with an upwards smile.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_glad.png)
    case glad
    /// An open mouth with teeth showing.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_happy.png)
    case happy
    /// A circular mouth with a surprised look.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_oh.png)
    case oh
    /// A closed mouth pointing downwards.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_sad.png)
    case sad
    /// A closed and straight mouth.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_straight.png)
    case straight
    /// An open mouth showing the lower teeth.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_teeth_lower.png)
    case teethLower
    /// An open mouth showing the upper teeth.
    ///
    /// See below for a preview of the mouth.
    ///
    /// ![Preview of the mouth](mouth_teeth_upper.png)
    case teethUpper

    /// A random mouth.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
