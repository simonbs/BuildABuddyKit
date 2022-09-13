import BuildABuddyKit
import SwiftUI

/// A view that contains controls for customizing a buddy.
///
/// The view supports customizing the skin of the buddy and whether they should be waving or not. It also contains a setting to configure the background color of the exported image.
///
/// The view navigates to other views for customizing specific parts of the buddy, such as the hair, shirt, pants, and more.
struct ConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `ConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
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
                Section {
                    Toggle("Wave", isOn: $builder.isWaving)
                }
            }.listStyle(.insetGrouped)
        }
    }
}
