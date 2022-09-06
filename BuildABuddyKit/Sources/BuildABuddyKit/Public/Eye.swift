/// The eye of a body.
public struct Eye {
    /// Size of an eye.
    public enum Size: CaseIterable {
        /// Size used for small eyes.
        case small
        /// Size used for large eyes.
        case large

        /// A random eye size.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Color of an eye.
    public enum Color: CaseIterable {
        /// Black color.
        case black
        /// Blue color.
        case blue
        /// Brown color.
        case brown
        /// Green color.
        case green
        /// Pine color.
        case pine

        /// A random eye color.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// The size of the eye.
    public let size: Size
    /// The color of the eye.
    public let color: Color

    /// Creates an `Eye` given a size and a color.
    /// - Parameters:
    ///   - size: The size of the eye.
    ///   - color: The color of the eye.
    public init(size: Size, color: Color) {
        self.size = size
        self.color = color
    }

    // An eye of a random size and with a random color.
    public static var random: Self {
        return Self(size: .random, color: .random)
    }
}
