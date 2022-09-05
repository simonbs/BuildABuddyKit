public struct Shirt {
    public enum Color: CaseIterable {
        case blue
        case green
        case grey
        case navy
        case pine
        case red
        case white
        case yellow

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public struct Body {
        public enum Style: CaseIterable {
            case style1
            case style2
            case style3
            case style4
            case style5
            case style6
            case style7
            case style8

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
    }

    public struct Arms {
        public enum Length: CaseIterable {
            case long
            case short
            case shorter

            public static var random: Self {
                return allCases.randomElement()!
            }
        }

        public let color: Color
        public let length: Length

        public init(color: Color, length: Length) {
            self.color = color
            self.length = length
        }
    }

    public let body: Body
    public let arms: Arms?

    public init(body: Body, arms: Arms? = nil) {
        self.body = body
        self.arms = arms
    }

    public static var random: Self {
        let addArms = [true, false].randomElement()!
        let body = Body(style: .random, color: .random)
        if addArms {
            let arms = Arms(color: .random, length: .random)
            return Self(body: body, arms: arms)
        } else {
            return Self(body: body)
        }
    }
}
