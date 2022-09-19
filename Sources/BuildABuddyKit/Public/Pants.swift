/// A pair of pants to be worn by a buddy.
public struct Pants {
    /// Color of a pair of pants.
    public enum Color: CaseIterable {
        /// Faded blue color.
        case blue1
        /// Bright blue color.
        case blue2
        /// Brown color.
        case brown
        /// Green color.
        case green
        /// Grey color.
        case grey
        /// Light blue color.
        case lightBlue
        /// Navy color.
        case navy
        /// Pine color.
        case pine
        /// Red color.
        case red
        /// Tan color.
        case tan
        /// White color.
        case white
        /// Yellow color.
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
        case long
        /// Length used for short pants.
        ///
        /// This length is suitable for knickers.
        case short
        /// Length used for very short pants.
        ///
        /// This length is suitable for shorts.
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
        case style1
        /// A belt in a grey style.
        case style2
        /// A belt in a yellow style.
        case style3
        /// A belt in a brown style.
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
