struct ContentView: View {
    private var buddy: Buddy {
        let buddy = Buddy()
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
