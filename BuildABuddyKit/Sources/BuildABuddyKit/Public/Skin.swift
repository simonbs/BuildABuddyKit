import CoreGraphics

/// The skin tone of a buddy.
///
/// The enum conforms to `CaseIterable` and the cases are ordered from light skin tones to dark skin tones.
public enum Skin: CaseIterable {
    /// The lightest skin tone.
    case tint1
    /// A skin tone that is darker than <doc:tint1> and lighter than <doc:tint3>.
    case tint2
    /// A skin tone that is darker than <doc:tint2> and lighter than <doc:tint4>.
    case tint3
    /// A skin tone that is darker than <doc:tint3> and lighter than <doc:tint5>.
    case tint4
    /// A skin tone that is darker than <doc:tint4> and lighter than <doc:tint6>.
    case tint5
    /// A skin tone that is darker than <doc:tint5> and lighter than <doc:tint7>.
    case tint6
    /// A skin tone that is darker than <doc:tint6> and lighter than <doc:tint8>.
    case tint7
    /// The lightest skin tone.
    case tint8

    /// A random skin tone.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
