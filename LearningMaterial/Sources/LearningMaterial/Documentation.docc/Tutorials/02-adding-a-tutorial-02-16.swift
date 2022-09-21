@Tutorial(time: 30) {
    @Intro(title: "Customizing a Buddy") {
        This tutorial will guide you through adding BuildABuddyKit to your project and customizing your first buddy.
    }

    @Section(title: "Create a new project and add BuildABuddyKit") {
        @ContentAndMedia {
            Create and configure an Xcode project that uses BuildABuddyKit.

            @Image(source: 01-customizing-a-buddy-01.png, alt: "A MacBook Pro running Xcode.")
        }

        @Steps {
            @Step {
                Open Xcode and either click "Create a new Xcode project" in Xcode’s startup window, or choose File > New > Project.

                @Image(source: 01-customizing-a-buddy-01-01.png, alt: "A screenshot of the Welcome to Xcode screen, which displays when you open Xcode. There are three options to choose from when you open Xcode: Create a new Xcode project, Clone an existing project, and Open a project or file. The first option — Create a new Xcode project — is highlighted.")
            }

            @Step {
                In the template selector, select iOS as the platform, select the App template, and then click Next.

                @Image(source: 01-customizing-a-buddy-01-02.png, alt: "A screenshot of the template selector sheet in Xcode. In the top row, iOS is selected as the platform. In the Application section, App is selected as the template; there is a highlight placed over the Next button at the lower-right of the sheet.")
            }

            @Step {
                Enter "BuddyCreator" as the product name, select "SwiftUI" for the interface, and select "Swift" for the language, and click Next. Choose a location to save the BuddyCreator project on your Mac.

                @Image(source: 01-customizing-a-buddy-01-03.png, alt: "A screenshot of the project sheet, which shows the Product Name for the app being built as TextCompanion. The interface is set to Storyboard, and the language is set to Swift.")
            }

            @Step {
                Add BuildABuddyKit as a Swift Package to your project by right-clicking your project in the Project navigator and selecting "Add Packages…"

                @Image(source: 01-customizing-a-buddy-01-04.png, alt: "A screenshot of the Project navigator, which shows right-click menu with the Add Packages menu item highlighted.")
            }

            @Step {
                Search for "https://github.com/simonbs/BuildABuddyKit" and select BuildABuddyKit in the search results. Specify a dependency rule, select the TextCompanion project under "Add to Project", and then select "Add Package".

                @Image(source: 01-customizing-a-buddy-01-05.png, alt: "A screenshot of the Add Package sheet, which shows the URL for the BuildABuddyKit GitHub repository in the search field. The search field, the BuildABuddyKit search result, the Dependency Rule, the Add to Project field, and the Add Package button are highlighted.")
            }

            @Step {
                Add BuildABuddyKit's package product to the BuddyCreator target and select "Add Package".

                @Image(source: 01-customizing-a-buddy-01-06.png, alt: "A screenshot of the Add Package showing the BuildABuddyKit package product being added to the BuddyCreator target. BuildABuddyKit's package product, the BuddyCreator target, and the Add Package button are highlighted.")
            }
        }
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
