import BuildABuddyKit
import Combine
import SwiftUI

final class BuddyBuilder: ObservableObject {
    @Published var backgroundColor: Color = .clear
    @Published var skin: Skin = .random
    @Published var eyebrowStyle: Eyebrow.Style = .random
    @Published var eyebrowColor: Eyebrow.Color = .random
    @Published var eyeSize: Eye.Size = .random
    @Published var eyeColor: Eye.Color = .random
    @Published var nose: Nose = .random
    @Published var mouth: Mouth = .random
    @Published var hairStyle: Hair.Style = .random
    @Published var hairColor: Hair.Color = .random
    @Published var shirtFrontStyle: Shirt.Front.Style = .random
    @Published var shirtFrontColor: Shirt.Color = .random
    @Published var shirtSleeveLength: Shirt.Sleeve.Length = .random
    @Published var shirtSleeveColor: Shirt.Color = .random
    @Published var pantsLength: Pants.Length = .random
    @Published var pantsColor: Pants.Color = .random
    @Published var pantsBelt: Pants.Belt = .random
    @Published var shoeStyle: Shoe.Style = .random
    @Published var shoeColor: Shoe.Color = .random
    @Published var isEyesEnabled = true
    @Published var isEyebrowsEnabled = [true, false].randomElement()!
    @Published var isHairEnabled = true
    @Published var isShirtSleevesEnabled = [true, false].randomElement()!
    @Published var isMouthEnabled = [true, false].randomElement()!
    @Published var isNoseEnabled = [true, false].randomElement()!
    @Published var isPantsEnabled = true

    func build() -> Buddy {
        return Buddy(skin: skin,
                     eyes: buildEyes(),
                     eyebrows: buildEyebrows(),
                     nose: isNoseEnabled ? nose : nil,
                     mouth: isMouthEnabled ? mouth : nil,
                     hair: buildHair(),
                     shirt: buildShirt(),
                     pants: buildPants(),
                     shoes: buildShoes())
    }

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
