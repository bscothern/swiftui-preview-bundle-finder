//
//  ExampleView.swift
//  swiftui-preview-bundle-finder
//
//  Created by Braden Scothern on 4/5/23.
//  Copyright © 2023 Braden Scothern. All rights reserved.
//

import LocalizationModule
import PreviewSnapshots
import SwiftUI

public struct ExampleView: View {
    public var body: some View {
        VStack {
            Text("Test 1", bundle: .package)
            Text("Test 2", bundle: .package)
            Text("Test 3", bundle: .package)
            BrokenView()
        }
    }

    public init() {}
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        snapshots.previews.previewLayout(.fixed(width: 200, height: 200))
    }

    static var snapshots: PreviewSnapshots<Void> {
        PreviewSnapshots(
            configurations: [
                .init(name: "Example", state: Void())
            ],
            configure: { _ in
                ExampleView()
                    .padding()
            }
        )
    }
}
