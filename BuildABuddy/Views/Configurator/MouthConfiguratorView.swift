import BuildABuddyKit
import SwiftUI

struct MouthConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
