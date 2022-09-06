import BuildABuddyKit
import SwiftUI

/// A view containing controls for configuring the eyes of a buddy.
struct EyesConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `EyesConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Section {
                Toggle(isOn: $builder.isEyesEnabled.animation()) {
                    Text("Add Eyes")
                }
                if builder.isEyesEnabled {
                    Picker("Pupil Size", selection: $builder.eyeSize) {
                        ForEach(Eye.Size.allCases) { size in
                            Text(size.title)
                        }
                    }
                }
                Picker("Pupil Color", selection: $builder.eyeColor) {
                    ForEach(Eye.Color.allCases) { color in
                        Text(color.title)
                    }
                }
            }
            Section {
                Toggle(isOn: $builder.isEyebrowsEnabled.animation()) {
                    Text("Add Eyebrows")
                }
                if builder.isEyebrowsEnabled {
                    Picker("Eyebrow Style", selection: $builder.eyebrowStyle) {
                        ForEach(Eyebrow.Style.allCases) { style in
                            Text(style.title)
                        }
                    }
                    Picker("Eyebrow Color", selection: $builder.eyebrowColor) {
                        ForEach(Eyebrow.Color.allCases) { color in
                            Text(color.title)
                        }
                    }
                }
            }
        }.navigationTitle("Eyes")
    }
}
