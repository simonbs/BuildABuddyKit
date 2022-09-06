/// The nose of a buddy.
public enum Nose: CaseIterable {
    /// The largest nose style.
    ///
    /// See below for a preview of the nose.
    ///
    /// ![Preview of the nose](nose_style_1.png)
    case style1
    /// A style for a medium-size nose.
    ///
    /// See below for a preview of the nose.
    ///
    /// ![Preview of the nose](nose_style_2.png)
    case style2
    /// A smallest nose style.
    ///
    /// See below for a preview of the nose.
    ///
    /// ![Preview of the nose](nose_style_3.png)
    case style3

    /// A random nose.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
