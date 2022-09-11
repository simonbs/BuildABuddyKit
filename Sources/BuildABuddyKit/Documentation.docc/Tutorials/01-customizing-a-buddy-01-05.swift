struct ContentView: View {
    private var buddy: Buddy {
        let buddy = Buddy()
        buddy.skin = .tint2
        buddy.hair = Hair(style: .style5, color: .red)
        return buddy
    }

    var body: some View {
        VStack {
            BuddyImage(buddy)
                .frame(width: 200, height: 200)
        }
        .padding()
    }
}
