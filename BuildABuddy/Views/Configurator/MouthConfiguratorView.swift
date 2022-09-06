import BuildABuddyKit
import SwiftUI

/// A view containing controls for configuring the mouth of a buddy.
struct MouthConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `MouthConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Toggle(isOn: $builder.isMouthEnabled.animation()) {
                Text("Add Mouth")
            }
            if builder.isMouthEnabled {
                Picker("Style", selection: $builder.mouth) {
                    ForEach(Mouth.allCases) { mouth in
                        Text(mouth.title)
                    }
                }
            }
        }.navigationTitle("Mouth")
    }
}
