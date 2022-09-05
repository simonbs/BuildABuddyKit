import CoreGraphics

extension Mouth {
    var asset: Asset {
        let name = "mouth_\(name)"
        return Asset(name: name, position: position)
    }
}

private extension Mouth {
    var name: String {
        switch self {
        case .glad:
            return "glad"
        case .happy:
            return "happy"
        case .oh:
            return "oh"
        case .sad:
            return "sad"
        case .straight:
            return "straight"
        case .teethLower:
            return "teethLower"
        case .teethUpper:
            return "teethUpper"
        }
    }

    var position: CGPoint {
        switch self {
        case .glad:
            return CGPoint(x: 287, y: 201)
        case .happy:
            return CGPoint(x: 287, y: 201)
        case .oh:
            return CGPoint(x: 292, y: 201)
        case .sad:
            return CGPoint(x: 282, y: 202)
        case .straight:
            return CGPoint(x: 281, y: 205)
        case .teethLower:
            return CGPoint(x: 287, y: 201)
        case .teethUpper:
            return CGPoint(x: 287, y: 201)
        }
    }
}
