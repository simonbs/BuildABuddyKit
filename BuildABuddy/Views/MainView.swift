import BuildABuddyKit
import SwiftUI
import UIKit

/// Main view of the app that displays the preview and the configurator.
struct MainView: View {
    /// An object containing the configuration of the buddy.
    @StateObject private var builder = BuddyBuilder()

    /// The content and behavior of the view.
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                PreviewView(builder: builder)
                Spacer().frame(height: 10)
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

private extension MainView {
    private func shareBuddy() {
        let image = renderBuddy()
        let message = "Look at this Buddy I created at @frenchkitconf!"
        let activityViewController = UIActivityViewController(activityItems: [image, message], applicationActivities: nil)
        let foregroundScene = UIApplication.shared.connectedScenes.first { $0.activationState == .foregroundActive }
        if let foregroundWindowScene = foregroundScene as? UIWindowScene {
            let presentingViewController = foregroundWindowScene.keyWindow?.rootViewController
            presentingViewController?.present(activityViewController, animated: true)
        }
    }

    private func renderBuddy() -> UIImage {
        let buddy = builder.build()
        var renderer = BuddyRenderer()
        renderer.backgroundColor = UIColor(builder.backgroundColor)
        return renderer.render(buddy)
    }
}
