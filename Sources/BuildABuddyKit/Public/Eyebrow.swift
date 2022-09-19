/// The eyebrow of a buddy.
public struct Eyebrow {
    /// Style of an eyebrow.
    ///
    /// The eyebrow style determines the shape of the eyebrow. Refer to the ``Color-swift.enum`` for the color of an eyebrow.
    public enum Style: CaseIterable {
        /// Style of an eyebrow.
        ///
        /// See below for a preview of style.
        ///
        /// ![Preview of the style](eyebrow_style_1.png)
        case style1
        /// Style of an eyebrow.
        ///
        /// See below for a preview of style.
        ///
        /// ![Preview of the style](eyebrow_style_2.png)
        case style2
        /// Style of an eyebrow.
        ///
        /// See below for a preview of style.
        ///
        /// ![Preview of the style](eyebrow_style_3.png)
        case style3

        /// A random eyebrow style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Color of an eyebrow.
    public enum Color: CaseIterable {
        /// Black color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_black.png)
        case black
        /// Blonde color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_blonde.png)
        case blonde
        /// Brown color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_brown1.png)
        case brown1
        /// Brown/grey color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_brown2.png)
        case brown2
        /// Grey color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_grey.png)
        case grey
        /// Red color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_red.png)
        case red
        /// Tan color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_tan.png)
        case tan
        /// White color.
        ///
        /// See below for a preview of the eyebrow color.
        ///
        /// ![Preview of the eyebrow color](eyebrow_color_white.png)
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
