/// A shoe to be worn by a buddy.
public struct Shoe {
    /// A style of shoe.
    ///
    /// The shoe style determines the shape of the shoe. Refer to the ``Color-swift.enum`` for the color of a shoe.
    public enum Style: CaseIterable {
        /// A style of shoe with a curvy look.
        case style1
        /// A style of shoe with a pointy look.
        case style2
        /// A style of shoe with a inward curve.
        case style3
        /// A style of shoe with a curvy look and a heel.
        case style4
        /// A style of shoe with an inward curve and a heel.
        case style5

        /// A random shoe style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The color of a shoe.
    public enum Color: CaseIterable {
        /// A black shoe color.
        case black
        /// A light brown shoe color.
        case brown1
        /// A dark brown shoe color.
        case brown2
        /// A grey shoe color.
        case grey
        /// A red shoe color.
        case red
        /// A tan shoe color.
        case tan

        /// A random shoe color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The style of the shoe.
    public let style: Style
    /// The color of the shoe.
    public let color: Color

    /// Create a `Shoe` given a style and a color.
    /// - Parameters:
    ///   - style: The style of the shoe.
    ///   - color: The color of the shoe.
    public init(style: Style, color: Color) {
        self.style = style
        self.color = color
    }

    /// A shoe with a random style and a random color.
    public static var random: Self {
        return Self(style: .random, color: .random)
    }
}
