import BuildABuddyKit
import SwiftUI

struct HairConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
