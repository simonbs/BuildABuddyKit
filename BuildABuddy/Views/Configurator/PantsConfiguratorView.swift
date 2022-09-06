import BuildABuddyKit
import SwiftUI

struct PantsConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

    var body: some View {
        List {
            Toggle(isOn: $builder.isPantsEnabled.animation()) {
                Text("Add Pants")
            }
            if builder.isPantsEnabled {
                Picker("Length", selection: $builder.pantsLength) {
                    ForEach(Pants.Length.allCases) { length in
                        Text(length.title)
                    }
                }
                Picker("Color", selection: $builder.pantsColor) {
                    ForEach(Pants.Color.allCases) { color in
                        Text(color.title)
                    }
                }
                Picker("Belt", selection: $builder.pantsBelt) {
                    ForEach(Pants.Belt.allCases) { belt in
                        Text(belt.title)
                    }
                }
            }
        }.navigationTitle("Pants")
    }
}
