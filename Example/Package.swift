// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Example",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "ExampleViewModule",
            targets: ["ExampleViewModule"]
        ),
    ],
    dependencies: [
        .package(path: "../../swiftui-preview-bundle-finder"),
        .package(url: "https://github.com/doordash-oss/swiftui-preview-snapshots", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ExampleViewModule",
            dependencies: [
                .target(name: "LocalizationModule"),
                .product(name: "PreviewSnapshots", package: "swiftui-preview-snapshots"),
            ]
        ),
        .testTarget(
            name: "ExampleViewModuleTests",
            dependencies: [
                .target(name: "ExampleViewModule"),
                .product(name: "PreviewSnapshotsTesting", package: "swiftui-preview-snapshots"),
            ]
        ),
        .target(
            name: "LocalizationModule",
            dependencies: [
                .product(name: "SwiftUIPreviewBundleFinder", package: "swiftui-preview-bundle-finder"),
            ],
            resources: [
                .process("Resources"),
            ]
        ),
    ]
)
