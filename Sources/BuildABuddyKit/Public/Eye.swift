public struct Eye {
    public enum Size: CaseIterable {
        case small
        case large

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public enum Color: CaseIterable {
        case black
        case blue
        case brown
        case green
        case pine

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public let size: Size
    public let color: Color

    public init(size: Size, color: Color) {
        self.size = size
        self.color = color
    }

    public static var random: Self {
        return Self(size: .random, color: .random)
    }
}
