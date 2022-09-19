public enum Nose: CaseIterable {
    case style1
    case style2
    case style3

    public static var random: Self {
        return allCases.randomElement()!
    }
}
