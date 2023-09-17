//
//  BrokenView.swift
//  swiftui-preview-bundle-finder
//
//  Created by Braden Scothern on 4/5/23.
//  Copyright © 2023 Braden Scothern. All rights reserved.
//

import SwiftUI

public struct BrokenView: View {
    public var body: some View {
        // This should show up as broken because apple still hasn't fixed the module loading for previews
        Text("Broken", bundle: .module)
    }

    public init() {}
}
