import BuildABuddyKit
import SwiftUI

struct ConfiguratorView: View {
    @ObservedObject private var builder: BuddyBuilder

    init(builder: BuddyBuilder) {
        self.builder = builder
    }

    var body: some View {
        List {
            Section {
                Picker("Skin", selection: $builder.skin) {
                    ForEach(Skin.allCases) { skin in
                        Text(skin.title)
                    }
                }
            }
            Section("Eyes") {
                Picker("Pupil Size", selection: $builder.eyeSize) {
                    ForEach(Eye.Size.allCases) { size in
                        Text(size.title)
                    }
                }
                Picker("Pupil Color", selection: $builder.eyeColor) {
                    ForEach(Eye.Color.allCases) { color in
                        Text(color.title)
                    }
                }
                Toggle(isOn: $builder.isEyebrowsEnabled.animation()) {
                    Text("Add Eyebrows")
                }
                if builder.isEyebrowsEnabled {
                    Picker("Eyebrow Style", selection: $builder.eyebrowStyle) {
                        ForEach(Eyebrow.Style.allCases) { style in
                            Text(style.title)
                        }
                    }
                    Picker("Eyebrow Color", selection: $builder.eyebrowColor) {
                        ForEach(Eyebrow.Color.allCases) { color in
                            Text(color.title)
                        }
                    }
                }
            }
            Section("Nose") {
                Toggle(isOn: $builder.isNoseEnabled.animation()) {
                    Text("Add Nose")
                }
                if builder.isNoseEnabled {
                    Picker("Style", selection: $builder.nose) {
                        ForEach(Nose.allCases) { nose in
                            Text(nose.title)
                        }
                    }
                }
            }
            Section("Mouth") {
                Toggle(isOn: $builder.isMouthEnabled.animation()) {
                    Text("Add Mouth")
                }
                Picker("Style", selection: $builder.mouth) {
                    ForEach(Mouth.allCases) { mouth in
                        Text(mouth.title)
                    }
                }
            }
            Section("Hair") {
                Picker("Style", selection: $builder.hairStyle) {
                    ForEach(Hair.Style.allCases) { style in
                        Text(style.title)
                    }
                }
                Picker("Color", selection: $builder.hairColor) {
                    ForEach(Hair.Color.allCases) { color in
                        Text(color.title)
                    }
                }
            }
            Section("Shirt") {
                Picker("Body Style", selection: $builder.shirtBodyStyle) {
                    ForEach(Shirt.Body.Style.allCases) { style in
                        Text(style.title)
                    }
                }
                Picker("Body Color", selection: $builder.shirtBodyColor) {
                    ForEach(Shirt.Color.allCases) { color in
                        Text(color.title)
                    }
                }
                Toggle(isOn: $builder.isShirtArmsEnabled.animation()) {
                    Text("Add Arms")
                }
                if builder.isShirtArmsEnabled {
                    Picker("Arm Length", selection: $builder.shirtArmLength) {
                        ForEach(Shirt.Arms.Length.allCases) { length in
                            Text(length.title)
                        }
                    }
                    Picker("Arm Color", selection: $builder.shirtArmColor) {
                        ForEach(Shirt.Color.allCases) { color in
                            Text(color.title)
                        }
                    }
                }
            }
            Section("Pants") {
                Picker("Length", selection: $builder.pantsLength) {
                    ForEach(Pants.Length.allCases) { length in
                        Text(length.title)
                    }
                }
                Picker("Color", selection: $builder.pantsColor) {
                    ForEach(Pants.Color.allCases) { color in
                        Text(color.title)
                    }
                }
                Picker("Belt", selection: $builder.pantsBelt) {
                    ForEach(Pants.Belt.allCases) { belt in
                        Text(belt.title)
                    }
                }
            }
            Section("Shoe") {
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
            }
        }.listStyle(.insetGrouped)
    }
}
