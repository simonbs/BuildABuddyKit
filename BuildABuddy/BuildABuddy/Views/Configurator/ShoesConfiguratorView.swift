import BuildABuddyKit
import SwiftUI

/// A view containing controls for customizing the shoes of a buddy.
struct ShoesConfiguratorView: View {
    /// An object containing the configuration of the buddy.
    @ObservedObject private var builder: BuddyBuilder

    /// Creates a `SheetConfiguratorView` given a `BuddyBuilder`.
    /// - Parameter builder: An object containing the configuration of the buddy.
    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        List {
            Picker("Style", selection: $builder.shoeStyle) {
                ForEach(Shoe.Style.allCases) { style in
                    Text(style.title)
                }
            }
            Picker("Color", selection: $builder.shoeColor) {
                ForEach(Shoe.Color.allCases) { color in
                    Text(color.title)
                }
            }
        }.navigationTitle("Shoes")
    }
}
