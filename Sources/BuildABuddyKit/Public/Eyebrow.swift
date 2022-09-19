/// The eyebrow of a buddy.
public struct Eyebrow {
    /// Style of an eyebrow.
    ///
    /// The eyebrow style determines the shape of the eyebrow. Refer to the ``Color-swift.enum`` for the color of an eyebrow.
    public enum Style: CaseIterable {
        /// Style of an eyebrow.
        case style1
        /// Style of an eyebrow.
        case style2
        /// Style of an eyebrow.
        case style3

        /// A random eyebrow style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Color of an eyebrow.
    public enum Color: CaseIterable {
        /// Black color.
        case black
        /// Blonde color.
        case blonde
        /// Brown color.
        case brown1
        /// Brown/grey color.
        case brown2
        /// Grey color.
        case grey
        /// Red color.
        case red
        /// Tan color.
        case tan
        /// White color.
        case white

        /// A random eyebrow color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The style of the eyebrow.
    public let style: Style
    /// The color of the eyebrow.
    public let color: Color

    /// Create an `Eyebrow` given a style and a color.
    /// - Parameters:
    ///   - style: The style of the eyebrow.
    ///   - color: The color of the eyebrow.
    public init(style: Style, color: Color) {
        self.style = style
        self.color = color
    }

    /// An eyebrow with a random style and a random color.
    public static var random: Self {
        return Self(style: .random, color: .random)
    }
}
