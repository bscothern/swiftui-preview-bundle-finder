# SwiftUIPreviewBundleFinder

A tool to make it possible to find resources in a multiple module swift package when working with SwiftUI

![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)
![SwiftPM](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)

## Usage

Create a file with the following and ensure you replace the value of `packageName` with your package name.

```swift
import Foundation
import SwiftUIPreviewBundleFinder

extension Foundation.Bundle {
    @usableFromInline
    class _CurrentBundleFinder: BundleFinder {
        @usableFromInline
        static let packageName: String = "SwiftPM Package Name" 

        @usableFromInline
        static let moduleName = String(#fileID.split(separator: "/")[0])

        @usableFromInline
        static let packageModule: Bundle = .module
    }

    @usableFromInline
    static var package: Bundle { .bundleFinder(_CurrentBundleFinder.self) }
}
```

Then when you need to access your resource you do so in that module like so:
```swift
Text("Some String", bundle: .package)
```

This will ensure that your package is found when using Xcode versions less than 16 and during tests.
