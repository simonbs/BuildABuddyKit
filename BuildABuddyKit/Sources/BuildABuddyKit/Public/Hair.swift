/// The hair of a buddy.
public struct Hair {
    /// A hair style.
    public enum Style: CaseIterable {
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_1.png)
        case style1
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_2.png)
        case style2
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_3.png)
        case style3
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_4.png)
        case style4
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_5.png)
        case style5
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_6.png)
        case style6
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_7.png)
        case style7
        /// A style of short hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_8.png)
        case style8
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_9.png)
        case style9
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_10.png)
        case style10
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_11.png)
        case style11
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_12.png)
        case style12
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_13.png)
        case style13
        /// A style of long hair.
        ///
        /// See below for a preview of the hair style.
        ///
        /// ![Preview of the hair style](hair_style_14.png)
        case style14

        /// A random hair style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// A hair color.
    public enum Color: CaseIterable {
        /// Black color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_black.png)
        case black
        /// Blonde color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_blonde.png)
        case blonde
        /// Brown color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_brown1.png)
        case brown1
        /// Brown/grey color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_brown2.png)
        case brown2
        /// Grey color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_grey.png)
        case grey
        /// Red color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_red.png)
        case red
        /// Tan color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_tan.png)
        case tan
        /// White color.
        ///
        /// See below for a preview of the hair color.
        ///
        /// ![Preview of the hair color](hair_color_white.png)
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
