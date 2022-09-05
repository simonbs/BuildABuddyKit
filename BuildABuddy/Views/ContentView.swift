import BuildABuddyKit
import SwiftUI
import UIKit

struct ContentView: View {
    @StateObject private var builder = BuddyBuilder()

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                PreviewView(builder: builder)
                Divider()
                ConfiguratorView(builder: builder)
            }
            .navigationTitle("Build a Buddy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        builder.randomize()
                    } label: {
                        Image(systemName: "dice")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        shareBuddy()
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
            }
        }.navigationViewStyle(.stack)
    }
}

private extension ContentView {
    private func shareBuddy() {
        let buddy = builder.build()
        let image = BuddyRenderer.render(buddy)
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        let foregroundScene = UIApplication.shared.connectedScenes.first { $0.activationState == .foregroundActive }
        if let foregroundWindowScene = foregroundScene as? UIWindowScene {
            let presentingViewController = foregroundWindowScene.keyWindow?.rootViewController
            presentingViewController?.present(activityViewController, animated: true)
        }
    }
}
