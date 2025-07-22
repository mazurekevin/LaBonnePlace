//
//  FormFieldView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 20/07/2025.
//

import Foundation

import SwiftUI

struct FormFieldView: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    var secureField: Bool = false

    var body: some View {
        
        if secureField{
            HStack(spacing: 10) {
                Text(label)
                SecureField(placeholder, text: $text)
            }
            .formFieldStyle()
        }else{
            HStack(spacing: 10) {
                Text(label)
                TextField(placeholder, text: $text)
            }
            .formFieldStyle()
        }
        
        
    }
}
