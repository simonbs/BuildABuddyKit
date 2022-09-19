/// A shirt to be worn by a buddy.
///
/// The front and sleeves of a shirt are separated, making it possible to create shirts with no sleeves as well as shirts that have separate colors on the front and the sleeves.
public struct Shirt {
    /// Color of a shirt.
    ///
    /// This is used to specify the color of a ``Front-swift.struct`` and ``Sleeve``. The color of the front and sleeves can be specified individually.
    public enum Color: CaseIterable {
        /// Blue color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_blue.png)
        case blue
        /// Green color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_green.png)
        case green
        /// Grey color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_grey.png)
        case grey
        /// Navy color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_navy.png)
        case navy
        /// Pine color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_pine.png)
        case pine
        /// Red color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_red.png)
        case red
        /// White color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_white.png)
        case white
        /// Yellow color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](shirt_color_yellow.png)
        case yellow

        /// A random shirt color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The front of a shirt.
    ///
    /// All shirts must have a front but they don't need to have sleeves.
    public struct Front {
        /// Style of a shirt.
        ///
        /// The style determines the shape and decorations of the front. Refer to the ``Shirt/Color`` for the color of the front.
        public enum Style: CaseIterable {
            /// A plain shirt.
            ///
            /// This style is suited for a regular t-shirt.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_1.png)
            case style1
            /// A shirt with the silhouette of a logo on the front.
            ///
            /// This style is suited for a regular t-shirt and tanktops.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_2.png)
            case style2
            /// A shirt with a pocket on the front.
            ///
            /// This style is suited for formal shirts.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_3.png)
            case style3
            /// A plain shirt.
            ///
            /// This style is suited for a regular t-shirt.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_4.png)
            case style4
            /// A shirt with a collar.
            ///
            /// This style is suited for polos and formal shirts.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_5.png)
            case style5
            /// A shirt with a zipper or buttons.
            ///
            /// This style is suited for hoodies and formal shirts.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_6.png)
            case style6
            /// A shirt with a zipper or buttons and a front pocket.
            ///
            /// This style is suited for formal shirts.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_7.png)
            case style7
            /// A plain shirt.
            ///
            /// This style is suited for a regular t-shirt.
            ///
            /// See below for a preview of the style.
            ///
            /// ![Preview of the style](shirt_style_8.png)
            case style8

            /// A random style for the front of a shirt.
            public static var random: Self {
                return allCases.randomElement()!
            }
        }

        /// The style of the front.
        public let style: Style
        /// The color of the front.
        public let color: Color

        /// Create a `Front` given a style and color.
        /// - Parameters:
        ///   - style: The style of the front.
        ///   - color: The color of the front.
        public init(style: Style, color: Color) {
            self.style = style
            self.color = color
        }
    }

    /// A sleeve for a shirt.
    ///
    /// The sleeves are shown on top of a buddy's arms. It is not required that a shirt has sleeves.
    public struct Sleeve {
        /// Length of a sleeve.
        public enum Length: CaseIterable {
            /// Long sleeves.
            ///
            /// These sleeves are suitable for formal shirts, sweatshirts, hoodies, and more.
            ///
            /// See below for a preview of the sleeve.
            ///
            /// ![Preview of the length](shirt_sleeve_length_long.png)
            case long
            /// These sleeves are suitable for regular shirts and t-shirts.
            ///
            /// See below for a preview of the sleeve.
            ///
            /// ![Preview of the length](shirt_sleeve_length_short.png)
            case short
            /// These sleeves are suitable for t-shirts.
            ///
            /// See below for a preview of the sleeve.
            ///
            /// ![Preview of the length](shirt_sleeve_length_shorter.png)
            case shorter

            /// A random length of sleeves.
            public static var random: Self {
                return allCases.randomElement()!
            }
        }

        /// The color of the sleeve.
        public let color: Color
        /// The length of the sleeve.
        public let length: Length

        /// Create a `Sleeve` given a color and a length.
        /// - Parameters:
        ///   - color: The color of the sleeve.
        ///   - length: The length of the sleeve.
        public init(color: Color, length: Length) {
            self.color = color
            self.length = length
        }
    }

    /// The front of the shirt.
    public let front: Front
    /// The sleeves of the shirt.
    ///
    /// Sleeves are optional on a shirt.
    public let sleeves: Sleeve?

    /// Create a `Shirt` given a front and optionally sleeves.
    /// - Parameters:
    ///   - front: The front of the shirt.
    ///   - sleeves: The sleeves of the shirt. Defaults to `nil`.
    public init(front: Front, sleeves: Sleeve? = nil) {
        self.front = front
        self.sleeves = sleeves
    }

    /// A shirt with a random front and random sleeves.
    ///
    /// The generated shirt may or may not include the sleeves of the shirt.
    public static var random: Self {
        let addSleeves = [true, false].randomElement()!
        let front = Front(style: .random, color: .random)
        if addSleeves {
            let sleeves = Sleeve(color: .random, length: .random)
            return Self(front: front, sleeves: sleeves)
        } else {
            return Self(front: front)
        }
    }
}
