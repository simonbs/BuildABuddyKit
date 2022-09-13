import BuildABuddyKit
import SwiftUI

/// A view containing controls for customizing the nose of a buddy.
struct NoseConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `NoseConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Toggle(isOn: $builder.isNoseEnabled.animation()) {
                Text("Add Nose")
            }
            if builder.isNoseEnabled {
                Picker("Style", selection: $builder.nose) {
                    ForEach(Nose.allCases) { nose in
                        Text(nose.title)
                    }
                }
            }
        }.navigationTitle("Nose")
    }
}
