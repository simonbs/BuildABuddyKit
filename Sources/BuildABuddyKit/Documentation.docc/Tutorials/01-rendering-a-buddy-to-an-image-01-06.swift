struct ContentView: View {
    private var buddy: Buddy {
        let buddy = Buddy()
        buddy.skin = .tint2
        buddy.hair = Hair(style: .style5, color: .red)
        buddy.mouth = .glad
        buddy.shirt = Shirt(front: Shirt.Front(style: .style1, color: .red),
                            sleeves: Shirt.Sleeve(color: .green, length: .short))
        buddy.pants = Pants(color: .blue2, length: .long, belt: .style1)
        buddy.shoes = Shoe(style: .style1, color: .brown2)
        return buddy
    }

    var body: some View {
        NavigationStack {
            VStack {
                BuddyImage(buddy)
                    .frame(width: 200, height: 200)
            }
            .padding()
            .navigationTitle("Buddy Creator")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ShareLink(item: renderImage(),
                              preview: SharePreview(
                                "Check out this buddy I've created!",
                                image: renderImage()
                              )
                    )
                }
            }
        }
    }

    private func renderImage() -> Image {
        let renderer = BuddyRenderer()
        return Image(uiImage: renderer.render(buddy))
    }
}
