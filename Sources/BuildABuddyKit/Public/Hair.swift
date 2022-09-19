public struct Hair {
    public enum Style: CaseIterable {
        case style1
        case style2
        case style3
        case style4
        case style5
        case style6
        case style7
        case style8
        case style9
        case style10
        case style11
        case style12
        case style13
        case style14

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
