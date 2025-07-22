//
//  RegisterView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 22/07/2025.
//

import Foundation
import SwiftUI
struct RegisterView: View {
    @State private var firstname: String = ""
    @State private var lastname: String = ""
    @State private var mail: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                Text("Créer votre compte")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                
                FormFieldView(label: "Prénom:", placeholder: "Firstname", text: $firstname)
                FormFieldView(label: "Nom:", placeholder: "Lastname", text: $lastname)
                FormFieldView(label: "Mail:", placeholder: "Email", text: $mail)
                FormFieldView(label: "Mot de passe:", placeholder: "Password", text: $password, secureField: true)
                Button("Valider") {
                    
                }
                .frame(width: 100, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                .padding(.top, 50)
                
            }.padding()
            
        }
    }
}

#Preview {
    RegisterView()
}

