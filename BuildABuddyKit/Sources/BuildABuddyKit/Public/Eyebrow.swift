public struct Eyebrow {
    public enum Style: CaseIterable {
        case style1
        case style2
        case style3

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public enum Color: CaseIterable {
        case black
        case blonde
        case brown1
        case brown2
        case grey
        case red
        case tan
        case white

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public let style: Style
    public let color: Color

    public init(style: Style, color: Color) {
        self.style = style
        self.color = color
    }

    public static var random: Self {
        return Self(style: .random, color: .random)
    }
}
