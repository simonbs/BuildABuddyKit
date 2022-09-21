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

            @Step {
                Add a `BuddyImage` and pass it the value of `buddy`.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-03.swift) {
                    @Image(source: 01-customizing-a-buddy-01-08.png, alt: "A screenshot of the iPhone simulator showing a buddy.")
                }
            }

            @Step {
                Start customizing the buddy by changing the skin tone.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-04.swift) {
                    @Image(source: 01-customizing-a-buddy-01-09.png, alt: "A screenshot of the iPhone simulator showing a buddy with a changed skin tone.")
                }
            }

            @Step {
                Change the hair of the buddy.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-05.swift) {
                    @Image(source: 01-customizing-a-buddy-01-10.png, alt: "A screenshot of the iPhone simulator showing a buddy with changed hair.")
                }
            }

            @Step {
                Change the mouth of the buddy.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-06.swift) {
                    @Image(source: 01-customizing-a-buddy-01-11.png, alt: "A screenshot of the iPhone simulator showing a buddy with a changed mouth.")
                }
            }

            @Step {
                Change the buddy's shirt.

                Notice that the color of the front of the shirt and the color of the sleeves can be specified independently.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-07.swift) {
                    @Image(source: 01-customizing-a-buddy-01-12.png, alt: "A screenshot of the iPhone simulator showing a buddy with a new shirt.")
                }
            }

            @Step {
                Change the buddy's pants.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-08.swift) {
                    @Image(source: 01-customizing-a-buddy-01-13.png, alt: "A screenshot of the iPhone simulator showing a buddy with new pants.")
                }
            }

            @Step {
                Finally, change the buddy's shoes.

                @Code(name: "ContentView.swift", file: 01-customizing-a-buddy-01-09.swift) {
                    @Image(source: 01-customizing-a-buddy-01-14.png, alt: "A screenshot of the iPhone simulator showing a buddy with new shoes.")
                }
            }
        }
    }
}
