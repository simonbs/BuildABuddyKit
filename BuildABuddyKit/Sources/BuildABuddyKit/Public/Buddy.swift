public struct Buddy {
    public let skin: Skin
    public let eyes: Eye
    public let eyebrows: Eyebrow?
    public let nose: Nose?
    public let mouth: Mouth?
    public let hair: Hair?
    public let shirt: Shirt?
    public let pants: Pants?
    public let shoes: Shoe?

    public init(skin: Skin,
                eyes: Eye,
                eyebrows: Eyebrow? = nil,
                nose: Nose? = nil,
                mouth: Mouth? = nil,
                hair: Hair? = nil,
                shirt: Shirt? = nil,
                pants: Pants? = nil,
                shoes: Shoe? = nil) {
        self.skin = skin
        self.eyes = eyes
        self.eyebrows = eyebrows
        self.nose = nose
        self.mouth = mouth
        self.hair = hair
        self.shirt = shirt
        self.pants = pants
        self.shoes = shoes
    }

    public static var random: Buddy {
        let isEyebrowsEnabled = [true, false].randomElement()!
        let isNoseEnabled = [true, false].randomElement()!
        let isMouthEnabled = [true, false].randomElement()!
        let isHairEnabled = [true, false].randomElement()!
        return Buddy(skin: .random,
                     eyes: .random,
                     eyebrows: isEyebrowsEnabled ? .random : nil,
                     nose: isNoseEnabled ? .random : nil,
                     mouth: isMouthEnabled ? .random : nil,
                     hair: isHairEnabled ? .random : nil,
                     shirt: .random,
                     pants: .random,
                     shoes: .random)
    }
}
