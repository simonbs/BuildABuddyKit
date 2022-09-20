import BuildABuddyKit
import SwiftUI
import UIKit

/// Shows a preview of the buddy that is being configured.
struct PreviewView: View {
    @ObservedObject private var builder: BuddyBuilder

    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    /// The content and behavior of the view.
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image("PreviewBackground")
                builder.backgroundColor
                BuddyImage(builder.build())
                    .transaction { transaction in
                        transaction.animation = nil
                    }
            }.frame(width: 200, height: 200)
            Spacer()
        }
    }
}
