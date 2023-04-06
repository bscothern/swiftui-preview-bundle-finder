// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftui-preview-bundle-finder",
    products: [
        .library(
            name: "SwiftUIPreviewBundleFinder",
            targets: ["SwiftUIPreviewBundleFinder"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftUIPreviewBundleFinder",
            dependencies: []
        ),
    ]
)
