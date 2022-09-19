import CoreGraphics

public enum Skin: CaseIterable {
    case tint1
    case tint2
    case tint3
    case tint4
    case tint5
    case tint6
    case tint7
    case tint8

    public static var random: Self {
        return allCases.randomElement()!
    }
}
