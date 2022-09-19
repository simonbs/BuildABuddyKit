/// The hair of a buddy.
public struct Hair {
    /// A hair style.
    public enum Style: CaseIterable {
        /// A style of short hair.
        case style1
        /// A style of short hair.
        case style2
        /// A style of short hair.
        case style3
        /// A style of short hair.
        case style4
        /// A style of short hair.
        case style5
        /// A style of short hair.
        case style6
        /// A style of short hair.
        case style7
        /// A style of short hair.
        case style8
        /// A style of long hair.
        case style9
        /// A style of long hair.
        case style10
        /// A style of long hair.
        case style11
        /// A style of long hair.
        case style12
        /// A style of long hair.
        case style13
        /// A style of long hair.
        case style14

        /// A random hair style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// A hair color.
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

        /// A random hair color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The style of the hair.
    public let style: Style
    /// The color of the hair.
    public let color: Color

    /// Creates a `Hair` given a style and a color.
    /// - Parameters:
    ///   - style: The style of the hair.
    ///   - color: The color of the hair.
    public init(style: Style, color: Color) {
        self.style = style
        self.color = color
    }

    /// Hair with a random style and color.
    public static var random: Self {
        return Self(style: .random, color: .random)
    }
}
