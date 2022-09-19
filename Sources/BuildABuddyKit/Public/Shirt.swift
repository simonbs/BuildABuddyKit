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

    public struct Front {
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

    public struct Sleeve {
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

    public let front: Front
    public let sleeves: Sleeve?

    public init(front: Front, sleeves: Sleeve? = nil) {
        self.front = front
        self.sleeves = sleeves
    }

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
