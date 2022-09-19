/// The nose of a buddy.
public enum Nose: CaseIterable {
    /// The largest nose style.
    case style1
    /// A style for a medium-size nose.
    case style2
    /// A smallest nose style.
    case style3

    /// A random nose.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
