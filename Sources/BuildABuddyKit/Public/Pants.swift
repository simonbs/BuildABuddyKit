public struct Pants {
    public enum Color: CaseIterable {
        case blue1
        case blue2
        case brown
        case green
        case grey
        case lightBlue
        case navy
        case pine
        case red
        case tan
        case white
        case yellow

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public enum Length: CaseIterable {
        case long
        case short
        case shorter

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public enum Belt: CaseIterable {
        case style1
        case style2
        case style3
        case style4

        public static var random: Self {
            return allCases.randomElement()!
        }
    }

    public let color: Color
    public let length: Length
    public let belt: Belt

    public init(color: Color, length: Length, belt: Belt) {
        self.color = color
        self.length = length
        self.belt = belt
    }

    public static var random: Self {
        return Self(color: .random, length: .random, belt: .random)
    }
}
