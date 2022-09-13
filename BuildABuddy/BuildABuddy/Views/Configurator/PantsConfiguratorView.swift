import BuildABuddyKit
import SwiftUI

/// A view containing controls for customizing the pants of a buddy.
struct PantsConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `PantsConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
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
