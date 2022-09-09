/// A pair of pants to be worn by a buddy.
public struct Pants {
    /// Color of a pair of pants.
    public enum Color: CaseIterable {
        /// Faded blue color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_blue1.png)
        case blue1
        /// Bright blue color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_blue2.png)
        case blue2
        /// Brown color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_brown.png)
        case brown
        /// Green color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_green.png)
        case green
        /// Grey color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_grey.png)
        case grey
        /// Light blue color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_light_blue.png)
        case lightBlue
        /// Navy color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_navy.png)
        case navy
        /// Pine color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_pine.png)
        case pine
        /// Red color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_red.png)
        case red
        /// Tan color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_tan.png)
        case tan
        /// White color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_white.png)
        case white
        /// Yellow color.
        ///
        /// See below for a preview of the color.
        ///
        /// ![Preview of the color](pants_color_yellow.png)
        case yellow

        /// A random pants color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Length of a pair of pants.
    public enum Length: CaseIterable {
        /// Length used for long pants.
        ///
        /// This length is suitable for regular pants.
        ///
        /// See below for a preview of the pants length.
        ///
        /// ![Preview of the length](pants_length_long.png)
        case long
        /// Length used for short pants.
        ///
        /// This length is suitable for knickers.
        ///
        /// See below for a preview of the pants length.
        ///
        /// ![Preview of the length](pants_length_short.png)
        case short
        /// Length used for very short pants.
        ///
        /// This length is suitable for shorts.
        ///
        /// See below for a preview of the pants length.
        ///
        /// ![Preview of the length](pants_length_shorter.png)
        case shorter

        /// A random length of pants.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Belt in a pair of pants.
    public enum Belt: CaseIterable {
        /// A belt in the same style as the pants.
        ///
        /// This style can be used to make it seem that the buddy is not wearing a belt.
        ///
        /// See below for a preview of the belt.
        ///
        /// ![Preview of the belt style](pants_belt_style_1.png)
        case style1
        /// A belt in a grey style.
        ///
        /// See below for a preview of the belt.
        ///
        /// ![Preview of the belt style](pants_belt_style_2.png)
        case style2
        /// A belt in a yellow style.
        ///
        /// See below for a preview of the belt.
        ///
        /// ![Preview of the belt style](pants_belt_style_3.png)
        case style3
        /// A belt in a brown style.
        ///
        /// See below for a preview of the belt.
        ///
        /// ![Preview of the belt style](pants_belt_style_4.png)
        case style4

        /// A random belt style.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The color of the pants.
    public let color: Color
    /// The length of the pants.
    public let length: Length
    /// The belt in the pants.
    public let belt: Belt

    /// Create a `Pants` given a color, length, and a belt.
    /// - Parameters:
    ///   - color: The color of the pants.
    ///   - length: The length of the pants.
    ///   - belt: The belt in the pants.
    public init(color: Color, length: Length, belt: Belt) {
        self.color = color
        self.length = length
        self.belt = belt
    }

    /// A random pair of pants.
    ///
    /// The pants will have a random color, a random length, and a random belt.
    public static var random: Self {
        return Self(color: .random, length: .random, belt: .random)
    }
}
