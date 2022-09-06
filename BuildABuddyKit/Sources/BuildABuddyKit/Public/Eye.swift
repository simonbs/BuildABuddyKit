/// The eye of a body.
public struct Eye {
    /// Size of an eye.
    public enum Size: CaseIterable {
        /// Size used for small eyes.
        ///
        /// See below for a preview of the eye size.
        ///
        /// ![Preview of the eye size](eye_size_small.png)
        case small
        /// Size used for large eyes.
        ///
        /// See below for a preview of the eye size.
        ///
        /// ![Preview of the eye size](eye_size_large.png)
        case large

        /// A random eye size.
        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    /// Color of an eye.
    public enum Color: CaseIterable {
        /// Black color.
        ///
        /// See below for a preview of the eye color.
        ///
        /// ![Preview of the eye color](eye_color_black.png)
        case black
        /// Blue color.
        ///
        /// See below for a preview of the eye color.
        ///
        /// ![Preview of the eye color](eye_color_blue.png)
        case blue
        /// Brown color.
        ///
        /// See below for a preview of the eye color.
        ///
        /// ![Preview of the eye color](eye_color_brown.png)
        case brown
        /// Green color.
        ///
        /// See below for a preview of the eye color.
        ///
        /// ![Preview of the eye color](eye_color_green.png)
        case green
        /// Pine color.
        ///
        /// See below for a preview of the eye color.
        ///
        /// ![Preview of the eye color](eye_color_pine.png)
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
