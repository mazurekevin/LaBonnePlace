//
//  SecondView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 11/06/2025.
//

import Foundation
import SwiftUI
struct SecondView: View {
    @State private var firstname: String = "kévin"
    @State private var lastname: String = "mazure"
    @State private var mail: String = "test@test.fr"
    @State private var password: String = "Jesuislemdp"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                FormFieldView(label: "Prénom:", placeholder: "Firstname", text: $firstname)
                FormFieldView(label: "Nom:", placeholder: "Lastname", text: $lastname)
                FormFieldView(label: "Mail:", placeholder: "Email", text: $mail)
                FormFieldView(label: "Mot de passe:", placeholder: "Password", text: $password)
                
                Button("Déconnexion") {
                    
                }
                .frame(width: 130, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                .foregroundStyle(.red)
                
                
            }.padding()
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Text("Profile")
                        .bold()
                        .font(.title)
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button("Sauvegarder"){
                        print("save")
                    }
                }
            }
            
        }
    }
}

#Preview {
    SecondView()
}



