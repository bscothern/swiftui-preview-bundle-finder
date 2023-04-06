// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIBundleFinder",
    products: [
        .library(
            name: "SwiftUIBundleFinder",
            targets: ["SwiftUIBundleFinder"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftUIBundleFinder",
            dependencies: []
        ),
    ]
)
