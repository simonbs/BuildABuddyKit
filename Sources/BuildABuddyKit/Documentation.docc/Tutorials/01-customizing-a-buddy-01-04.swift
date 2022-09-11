struct ContentView: View {
    private var buddy: Buddy {
        var buddy = Buddy()
        buddy.skin = .tint2
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
