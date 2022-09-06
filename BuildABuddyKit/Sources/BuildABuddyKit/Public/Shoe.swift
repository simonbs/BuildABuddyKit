/// A shoe to be worn by a buddy.
public struct Shoe {
    /// A style of shoe.
    ///
    /// The shoe style determines the shape of the shoe. Refer to the <doc:Color-swift.enum> for the color of a shoe.
    public enum Style: CaseIterable {
        /// A style of shoe with a curvy look.
        ///
        /// See below for a preview of the style.
        ///
        /// ![Preview of the style](shoe_style_1.png)
        case style1
        /// A style of shoe with a pointy look.
        ///
        /// See below for a preview of the style.
        ///
        /// ![Preview of the style](shoe_style_2.png)
        case style2
        /// A style of shoe with a inward curve.
        ///
        /// See below for a preview of the style.
        ///
        /// ![Preview of the style](shoe_style_3.png)
        case style3
        /// A style of shoe with a curvy look and a heel.
        ///
        /// See below for a preview of the style.
        ///
        /// ![Preview of the style](shoe_style_4.png)
        case style4
        /// A style of shoe with an inward curve and a heel.
        ///
        /// See below for a preview of the style.
        ///
        /// ![Preview of the style](shoe_style_5.png)
        case style5

        /// A random shoe style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The color of a shoe.
    public enum Color: CaseIterable {
        /// A black shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_black.png)
        case black
        /// A light brown shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_brown1.png)
        case brown1
        /// A dark brown shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_brown2.png)
        case brown2
        /// A grey shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_grey.png)
        case grey
        /// A red shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_red.png)
        case red
        /// A tan shoe color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shoe_color_tan.png)
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
