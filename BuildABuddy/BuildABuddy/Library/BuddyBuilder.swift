import BuildABuddyKit
import Combine
import SwiftUI

/// Contains the configuration of a buddy being built using a <doc:ConfiguratorView>.
final class BuddyBuilder: ObservableObject {
    /// The color behind the buddy.
    @Published var backgroundColor: Color = .clear
    /// The skin tone of the buddy.
    @Published var skin: Skin = .random
    /// The eyebrow style of the buddy.
    @Published var eyebrowStyle: Eyebrow.Style = .random
    /// The color of the eyebrows.
    @Published var eyebrowColor: Eyebrow.Color = .random
    /// The size of the buddy's eyes.
    @Published var eyeSize: Eye.Size = .random
    /// The color of the buddy's eyes.
    @Published var eyeColor: Eye.Color = .random
    /// The nose of the buddy.
    @Published var nose: Nose = .random
    /// The mouth of the buddy.
    @Published var mouth: Mouth = .random
    /// The style of the buddy's hair.
    @Published var hairStyle: Hair.Style = .random
    /// The color of the buddy's hair.
    @Published var hairColor: Hair.Color = .random
    /// The style of front of the buddy's shirt.
    @Published var shirtFrontStyle: Shirt.Front.Style = .random
    /// The color of front of the buddy's shirt.
    @Published var shirtFrontColor: Shirt.Color = .random
    /// The length of the sleeves on the buddy's shirt.
    @Published var shirtSleeveLength: Shirt.Sleeve.Length = .random
    /// The color of the sleeves on the buddy's shirt.
    @Published var shirtSleeveColor: Shirt.Color = .random
    /// The length of the buddy's pants.
    @Published var pantsLength: Pants.Length = .random
    /// The color of the buddy's pants.
    @Published var pantsColor: Pants.Color = .random
    /// The style of the belt on the buddy's pants.
    @Published var pantsBelt: Pants.Belt = .random
    /// The style of the buddy's shoes.
    @Published var shoeStyle: Shoe.Style = .random
    /// The color of the buddy's shoes.
    @Published var shoeColor: Shoe.Color = .random
    /// Whether to add eyes to the buddy.
    @Published var isEyesEnabled = true
    /// Whether to add eyebrows to the buddy.
    @Published var isEyebrowsEnabled = [true, false].randomElement()!
    /// Whether to add hair to the buddy.
    @Published var isHairEnabled = true
    /// Whether to add sleeves to the shirt on the buddy.
    @Published var isShirtSleevesEnabled = [true, false].randomElement()!
    /// Whether to add a mouth to the buddy.
    @Published var isMouthEnabled = [true, false].randomElement()!
    /// Whether to add a nose to the buddy.
    @Published var isNoseEnabled = [true, false].randomElement()!
    /// Whether to add pants to the buddy.
    @Published var isPantsEnabled = true
    /// Whether the buddy should be waving.
    @Published var isWaving = false

    /// Creates a `BuddyBuilder`.
    ///
    /// The initial builder contains random configurations for the body upon initialization.
    init() {}

    /// Creates a buddy using the current configuration.
    /// - Returns: The configured buddy.
    func build() -> Buddy {
        var buddy = Buddy(skin: skin,
                          eyes: buildEyes(),
                          eyebrows: buildEyebrows(),
                          nose: isNoseEnabled ? nose : nil,
                          mouth: isMouthEnabled ? mouth : nil,
                          hair: buildHair(),
                          shirt: buildShirt(),
                          pants: buildPants(),
                          shoes: buildShoes())
        if isWaving {
            buddy.wave()
        } else {
            buddy.stand()
        }
        return buddy
    }

    /// Randomizes the configuration of the buddy.
    func randomize() {
        skin = .random
        eyebrowStyle = .random
        eyebrowColor = .random
        eyeSize = .random
        eyeColor = .random
        nose = .random
        mouth = .random
        hairStyle = .random
        hairColor = .random
        shirtFrontStyle = .random
        shirtFrontColor = .random
        shirtSleeveLength = .random
        shirtSleeveColor = .random
        pantsLength = .random
        pantsColor = .random
        pantsBelt = .random
        shoeStyle = .random
        shoeColor = .random
        isEyebrowsEnabled = [true, false].randomElement()!
        isShirtSleevesEnabled = [true, false].randomElement()!
        isMouthEnabled = [true, false].randomElement()!
        isNoseEnabled = [true, false].randomElement()!
    }
}

private extension BuddyBuilder {
    private func buildEyes() -> Eye? {
        if isEyesEnabled {
            return Eye(size: eyeSize, color: eyeColor)
        } else {
            return nil
        }
    }

    private func buildEyebrows() -> Eyebrow? {
        if isEyebrowsEnabled {
            return Eyebrow(style: eyebrowStyle, color: eyebrowColor)
        } else {
            return nil
        }
    }

    private func buildHair() -> Hair? {
        if isHairEnabled {
            return Hair(style: hairStyle, color: hairColor)
        } else {
            return nil
        }
    }

    private func buildShirt() -> Shirt {
        let front = Shirt.Front(style: shirtFrontStyle, color: shirtFrontColor)
        if isShirtSleevesEnabled {
            let sleeves = Shirt.Sleeve(color: shirtSleeveColor, length: shirtSleeveLength)
            return Shirt(front: front, sleeves: sleeves)
        } else {
            return Shirt(front: front)
        }
    }

    private func buildPants() -> Pants? {
        if isPantsEnabled {
            return Pants(color: pantsColor, length: pantsLength, belt: pantsBelt)
        } else {
            return nil
        }
    }

    private func buildShoes() -> Shoe {
        return Shoe(style: shoeStyle, color: shoeColor)
    }
}
