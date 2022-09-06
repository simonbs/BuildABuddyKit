import BuildABuddyKit
import SwiftUI

struct EyesConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
