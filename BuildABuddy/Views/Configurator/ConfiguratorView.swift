import BuildABuddyKit
import SwiftUI

struct ConfiguratorView: View {
    @ObservedObject private var builder: BuddyBuilder

    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    var body: some View {
        NavigationView {
            List {
                Section {
                    ColorPicker("Background", selection: $builder.backgroundColor)
                }
                Section {
                    Picker("Skin", selection: $builder.skin) {
                        ForEach(Skin.allCases) { skin in
                            Text(skin.title)
                        }
                    }
                }
                Section {
                    NavigationLink(destination: HairConfiguratorView(builder: builder)) {
                        Text("Hair")
                    }
                    NavigationLink(destination: EyesConfiguratorView(builder: builder)) {
                        Text("Eyes")
                    }
                    NavigationLink(destination: NoseConfiguratorView(builder: builder)) {
                        Text("Nose")
                    }
                    NavigationLink(destination: MouthConfiguratorView(builder: builder)) {
                        Text("Mouth")
                    }
                    NavigationLink(destination: ShirtConfiguratorView(builder: builder)) {
                        Text("Shirt")
                    }
                    NavigationLink(destination: PantsConfiguratorView(builder: builder)) {
                        Text("Pants")
                    }
                    NavigationLink(destination: ShoesConfiguratorView(builder: builder)) {
                        Text("Shoes")
                    }
                    NavigationLink(destination: NoseConfiguratorView(builder: builder)) {
                        Text("Nose")
                    }
                }
            }.listStyle(.insetGrouped)
        }
    }
}
