import BuildABuddyKit
import SwiftUI

struct NoseConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
