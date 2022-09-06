import BuildABuddyKit
import SwiftUI

struct ShoesConfiguratorView: View {
    @ObservedObject var builder: BuddyBuilder

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
