//
//  ExampleViewTests.swift
//  SwiftUIBundleFinderExample
//
//  Created by Braden Scothern on 4/5/23.
//  Copyright © 2023 Braden Scothern. All rights reserved.
//

#if !os(watchOS)
@testable import ExampleViewModule
import PreviewSnapshotsTesting
import SwiftUI
import XCTest

final class ExampleViewTests: XCTestCase {
    func testSnapshots() {
        ExampleView_Previews.snapshots.assertSnapshots(as: .image(layout: .fixed(width: 200, height: 200)))
    }
}
#endif
