//
//  ViewHelpers.swift
//  LaBonnePlace
//
//  Created by teamdoc on 20/07/2025.
//

import Foundation
import SwiftUI

extension View {
    func formFieldStyle() -> some View {
        self
            .padding()
            .frame(height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
    }
}
