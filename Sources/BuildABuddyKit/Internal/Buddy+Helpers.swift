extension Buddy {
    var assets: [Asset] {
        var assets = skin.assets(for: pose)
        if let eyeAssets = eyes?.assets {
            assets.append(contentsOf: eyeAssets)
        }
        if let eyebrowsAssets = eyebrows?.assets {
            assets.append(contentsOf: eyebrowsAssets)
        }
        if let noseAsset = nose?.asset(for: skin) {
            assets.append(noseAsset)
        }
        if let mouthAsset = mouth?.asset {
            assets.append(mouthAsset)
        }
        assets.append(contentsOf: shoes.assets)
        if let pantsAssets = pants?.assets {
            assets.append(contentsOf: pantsAssets)
        }
        assets.append(contentsOf: shirt.assets(for: pose))
        if let hairAsset = hair?.asset {
            assets.append(hairAsset)
        }
        return assets
    }
}
