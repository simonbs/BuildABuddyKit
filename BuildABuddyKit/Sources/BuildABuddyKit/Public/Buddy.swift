/// A buddy that can be rendered to an image using a <doc:BuddyRenderer>.
///
/// An instance of `Buddy` describes the appearance of that buddy, and as such, the image that the <doc:BuddyRenderer> will output.
///
/// You can get started
public struct Buddy {
    /// The buddy's skin.
    public var skin: Skin
    /// The buddy's eyes.
    ///
    /// If this is `nil` the buddy will not have any eyes.
    public var eyes: Eye?
    /// The buddy's eyebrows.
    ///
    /// If this is `nil` the buddy will not have any eyebrows.
    public var eyebrows: Eyebrow?
    /// The buddy's nose.
    ///
    /// If this is `nil` the buddy will not have a nose.
    public var nose: Nose?
    /// The buddy's mouth.
    ///
    /// If this is `nil` the buddy will not have a mouth.
    public var mouth: Mouth?
    /// The buddy's hair.
    public var hair: Hair?
    /// The buddy's shirt.
    public var shirt: Shirt
    /// The buddy's pants.
    ///
    /// If this is `nil` the buddy will not be wearing any pants.
    public var pants: Pants?
    /// The buddy's shoes.
    public var shoes: Shoe

    /// Create a `Buddy` given an appearance.
    /// - Parameters:
    ///   - skin: The buddy's skin.
    ///   - eyes: The buddy's eyes. Defaults to `nil`.
    ///   - eyebrows: The buddy's eyebrows. Defaults to `nil`.
    ///   - nose: The buddy's nose. Defaults to `nil`.
    ///   - mouth: The buddy's mouth. Defaults to `nil`.
    ///   - hair: The buddy's hair. Defaults to `nil`.
    ///   - shirt: The buddy's shirt.
    ///   - pants: The buddy's pants. Defaults to `nil`.
    ///   - shoes: The buddy's shoes.
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

    /// Creates a `Buddy` with default appearance.
    ///
    /// The appearance of the buddy can be customized by using the properties on the buddy.
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

    /// A buddy with all parts being generated randomly.
    ///
    /// It is randomly determined if the buddy should have eyebrows, a nose, a mouth, and hair. The body will always have a skin tone, eyes, a shirt, pants, and shoes.
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
