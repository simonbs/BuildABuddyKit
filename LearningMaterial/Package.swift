// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LearningMaterial",
    products: [
        .library(name: "LearningMaterial", targets: ["LearningMaterial"]),
    ],
    targets: [
        .target(name: "LearningMaterial")
    ]
)
