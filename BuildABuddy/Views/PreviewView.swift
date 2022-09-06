import BuildABuddyKit
import SwiftUI
import UIKit

struct PreviewView: View {
    @ObservedObject private var builder: BuddyBuilder

    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image("PreviewBackground")
                Image(uiImage: renderBuddy())
                    .scaleEffect(x: 1 / 3, y: 1 / 3)
                    .frame(width: 200, height: 200)
                    .transaction { transaction in
                        transaction.animation = nil
                    }
            }
            Spacer()
        }
    }
}

private extension PreviewView {
    private func renderBuddy() -> UIImage {
        let buddy = builder.build()
        var renderer = BuddyRenderer()
        renderer.backgroundColor = UIColor(builder.backgroundColor)
        return renderer.render(buddy)
    }
}
