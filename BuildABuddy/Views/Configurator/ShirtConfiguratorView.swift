import BuildABuddyKit
import SwiftUI

/// A view containing controls for configuring the shirt of a buddy.
struct ShirtConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `ShirtConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Picker("Front Style", selection: $builder.shirtFrontStyle) {
                ForEach(Shirt.Front.Style.allCases) { style in
                    Text(style.title)
                }
            }
            Picker("Front Color", selection: $builder.shirtFrontColor) {
                ForEach(Shirt.Color.allCases) { color in
                    Text(color.title)
                }
            }
            Toggle(isOn: $builder.isShirtSleevesEnabled.animation()) {
                Text("Add Sleeves")
            }
            if builder.isShirtSleevesEnabled {
                Picker("Sleeve Length", selection: $builder.shirtSleeveLength) {
                    ForEach(Shirt.Sleeve.Length.allCases) { length in
                        Text(length.title)
                    }
                }
                Picker("Sleeve Color", selection: $builder.shirtSleeveColor) {
                    ForEach(Shirt.Color.allCases) { color in
                        Text(color.title)
                    }
                }
            }
        }.navigationTitle("Shirt")
    }
}
