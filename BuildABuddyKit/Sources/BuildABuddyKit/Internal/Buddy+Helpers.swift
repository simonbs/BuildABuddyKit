extension Buddy {
    var assets: [Asset] {
        var assets = skin.assets + eyes.assets
        if let eyebrowsAssets = eyebrows?.assets {
            assets.append(contentsOf: eyebrowsAssets)
        }
        if let noseAsset = nose?.asset(for: skin) {
            assets.append(noseAsset)
        }
        if let mouthAsset = mouth?.asset {
            assets.append(mouthAsset)
        }
        if let shoeAssets = shoes?.assets {
            assets.append(contentsOf: shoeAssets)
        }
        if let pantsAssets = pants?.assets {
            assets.append(contentsOf: pantsAssets)
        }
        if let shirtAssets = shirt?.assets {
            assets.append(contentsOf: shirtAssets)
        }
        if let hairAsset = hair?.asset {
            assets.append(hairAsset)
        }
        return assets
    }
}
