//
//  CurrentBundleFinder.swift
//  SwiftUIBundleFinderExample
//
//  Created by Braden Scothern on 4/5/23.
//  Copyright © 2023 Braden Scothern. All rights reserved.
//

import Foundation
import SwiftUIBundleFinder

extension Foundation.Bundle {
    @usableFromInline
    class _CurrentBundleFinder: BundleFinder {
        @usableFromInline
        static let packageName: String = "Example"

        #if swift(<6.0)
        @usableFromInline
        static let moduleName = String(#fileID.split(separator: "/")[0])
        #else
        #error("Module name calculating not yet supported on Swift 6.0+")
        #endif

        @usableFromInline
        static let packageModule: Bundle = .module
    }

    /// Use this instead of `.module` for finding resources.
    ///
    /// - Note: This should have a better name when in a real app or package.
    ///     As is it is too easy to have conflicts.
    public static var package: Bundle { .bundleFinder(_CurrentBundleFinder.self) }
}
