import CoreGraphics

/// The skin tone of a buddy.
///
/// The enum conforms to `CaseIterable` and the cases are ordered from light skin tones to dark skin tones.
public enum Skin: CaseIterable {
    /// The lightest skin tone.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_1.png)
    case tint1
    /// A skin tone that is darker than ``tint1`` and lighter than ``tint3``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_2.png)
    case tint2
    /// A skin tone that is darker than ``tint2`` and lighter than ``tint4``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_3.png)
    case tint3
    /// A skin tone that is darker than ``tint3`` and lighter than ``tint5``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_4.png)
    case tint4
    /// A skin tone that is darker than ``tint4`` and lighter than ``tint6``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_5.png)
    case tint5
    /// A skin tone that is darker than ``tint5`` and lighter than ``tint7``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_6.png)
    case tint6
    /// A skin tone that is darker than ``tint6`` and lighter than ``tint8``.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_7.png)
    case tint7
    /// The lightest skin tone.
    ///
    /// See below for a preview of the skin tone.
    ///
    /// ![Preview of the skin tone](skin_tint_8.png)
    case tint8

    /// A random skin tone.
    public static var random: Self {
        return allCases.randomElement()!
    }
}
