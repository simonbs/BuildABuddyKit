import BuildABuddyKit
import SwiftUI

struct PreviewView: View {
    @ObservedObject private var builder: BuddyBuilder

    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    var body: some View {
        HStack {
            Spacer()
            Image(uiImage: BuddyRenderer.render(builder.build()))
                .scaleEffect(x: 1 / 3, y: 1 / 3)
                .frame(width: 200, height: 200)
                .transaction { transaction in
                    transaction.animation = nil
                }
            Spacer()
        }.background(Color(uiColor: .secondarySystemBackground).opacity(0.2))
    }
}
