public struct Buddy {
    public var skin: Skin
    public var eyes: Eye?
    public var eyebrows: Eyebrow?
    public var nose: Nose?
    public var mouth: Mouth?
    public var hair: Hair?
    public var shirt: Shirt
    public var pants: Pants?
    public var shoes: Shoe
    private(set) var pose: Pose = .stand

    public init(skin: Skin,
                eyes: Eye? = nil,
                eyebrows: Eyebrow? = nil,
                nose: Nose? = nil,
                mouth: Mouth? = nil,
                hair: Hair? = nil,
                shirt: Shirt,
                pants: Pants? = nil,
                shoes: Shoe) {
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

    public init() {
        let eyes = Eye(size: .large, color: .green)
        let eyebrows = Eyebrow(style: .style1, color: .brown1)
        let hair = Hair(style: .style1, color: .brown1)
        let shirtFront = Shirt.Front(style: .style1, color: .blue)
        let shirtSleeves = Shirt.Sleeve(color: .blue, length: .long)
        let shirt = Shirt(front: shirtFront, sleeves: shirtSleeves)
        let pants = Pants(color: .pine, length: .long, belt: .style1)
        let shoes = Shoe(style: .style1, color: .black)
        self.init(skin: .tint5, eyes: eyes, eyebrows: eyebrows, nose: .style1, mouth: .happy, hair: hair, shirt: shirt, pants: pants, shoes: shoes)
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

    mutating public func wave() {
        pose = .wave
    }

    mutating public func stand() {
        pose = .stand
    }
}
