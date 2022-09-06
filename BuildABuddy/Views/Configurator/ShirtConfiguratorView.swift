import BuildABuddyKit
import SwiftUI

struct ShirtConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
