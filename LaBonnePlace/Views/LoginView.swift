//
//  LoginView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 24/03/2025.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var identifiant: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false

    var body: some View {
        NavigationView {
            if isLoggedIn {
                MainTabView()
            } else {
                loginForm
            }
        }
    }

    private var loginForm: some View {
        VStack {
            Spacer()
            Text("LaBonnePlace")
                .font(.title)
                .bold()
            Spacer()
            VStack {
                Spacer()
                TextField("Identifiant", text: $identifiant)
                    .padding()
                    .frame(height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                Spacer()
                SecureField("Mot de passe", text: $password)
                    .padding()
                    .frame(height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 150)

            Spacer()

            Button("Valider") {
                // Ici, ajoute ta future logique de login via AuthService
                isLoggedIn = true
            }
            .frame(width: 100, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))

            Spacer()
        }
    }
}


#Preview {
    LoginView()
}
