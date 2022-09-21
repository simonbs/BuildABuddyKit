@Tutorial(time: 30) {
    @Intro(title: "Customizing a Buddy") {
        This tutorial will guide you through adding BuildABuddyKit to your project and customizing your first buddy.
    }

    @Section(title: "Create and customize a buddy") {
        @ContentAndMedia {
            Create an instance of `Buddy` and customize it.

            @Image(source: 01-customizing-a-buddy-01.png, alt: "A MacBook Pro running Xcode.")
        }

        @Steps {
            @Step {
                Select `ContentView.swift` in the Project navigator.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-01.swift)
            }

            @Step {
                Add a private property named `buddy` that returns an instance of `Buddy`.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-02.swift) {
                    @Image(source: 01-customizing-a-buddy-01-07.png, alt: "A screenshot of the iPhone simulator showing a globe icon and the text \"Hello, world!\".")
                }
            }
        }
    }
}
