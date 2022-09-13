import BuildABuddyKit
import SwiftUI

/// A view containing controls for customizing the hair of a buddy.
struct HairConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `HairConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Toggle(isOn: $builder.isHairEnabled.animation()) {
                Text("Add Hair")
            }
            if builder.isHairEnabled {
                Picker("Style", selection: $builder.hairStyle) {
                    ForEach(Hair.Style.allCases) { style in
                        Text(style.title)
                    }
                }
                Picker("Color", selection: $builder.hairColor) {
                    ForEach(Hair.Color.allCases) { color in
                        Text(color.title)
                    }
                }
            }
        }.navigationTitle("Hair")
    }
}
