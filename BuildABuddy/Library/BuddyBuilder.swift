import BuildABuddyKit
import Combine

final class BuddyBuilder: ObservableObject {
    @Published var skin: Skin = .random
    @Published var eyebrowStyle: Eyebrow.Style = .random
    @Published var eyebrowColor: Eyebrow.Color = .random
    @Published var eyeSize: Eye.Size = .random
    @Published var eyeColor: Eye.Color = .random
    @Published var nose: Nose = .random
    @Published var mouth: Mouth = .random
    @Published var hairStyle: Hair.Style = .random
    @Published var hairColor: Hair.Color = .random
    @Published var shirtBodyStyle: Shirt.Body.Style = .random
    @Published var shirtBodyColor: Shirt.Color = .random
    @Published var shirtArmLength: Shirt.Arms.Length = .random
    @Published var shirtArmColor: Shirt.Color = .random
    @Published var pantsLength: Pants.Length = .random
    @Published var pantsColor: Pants.Color = .random
    @Published var pantsBelt: Pants.Belt = .random
    @Published var shoeStyle: Shoe.Style = .random
    @Published var shoeColor: Shoe.Color = .random
    @Published var isEyebrowsEnabled = [true, false].randomElement()!
    @Published var isShirtArmsEnabled = [true, false].randomElement()!
    @Published var isMouthEnabled = [true, false].randomElement()!
    @Published var isNoseEnabled = [true, false].randomElement()!

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
        shirtBodyStyle = .random
        shirtBodyColor = .random
        shirtArmLength = .random
        shirtArmColor = .random
        pantsLength = .random
        pantsColor = .random
        pantsBelt = .random
        shoeStyle = .random
        shoeColor = .random
        isEyebrowsEnabled = [true, false].randomElement()!
        isShirtArmsEnabled = [true, false].randomElement()!
        isMouthEnabled = [true, false].randomElement()!
        isNoseEnabled = [true, false].randomElement()!
    }
}

private extension BuddyBuilder {
    private func buildEyes() -> Eye {
        return Eye(size: eyeSize, color: eyeColor)
    }

    private func buildEyebrows() -> Eyebrow? {
        if isEyebrowsEnabled {
            return Eyebrow(style: eyebrowStyle, color: eyebrowColor)
        } else {
            return nil
        }
    }

    private func buildHair() -> Hair {
        return Hair(style: hairStyle, color: hairColor)
    }

    private func buildShirt() -> Shirt {
        let body = Shirt.Body(style: shirtBodyStyle, color: shirtBodyColor)
        if isShirtArmsEnabled {
            let arms = Shirt.Arms(color: shirtArmColor, length: shirtArmLength)
            return Shirt(body: body, arms: arms)
        } else {
            return Shirt(body: body)
        }
    }

    private func buildPants() -> Pants {
        return Pants(color: pantsColor, length: pantsLength, belt: pantsBelt)
    }

    private func buildShoes() -> Shoe {
        return Shoe(style: shoeStyle, color: shoeColor)
    }
}
