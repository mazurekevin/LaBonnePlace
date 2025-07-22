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
    
    func Tapped(){
        print("tap")
    }

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
                    .formFieldStyle()
                Spacer()
                SecureField("Mot de passe", text: $password)
                    .formFieldStyle()
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 150)

            Spacer()

            Button("Valider") {
                isLoggedIn = true
            }
            .frame(width: 100, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
            NavigationLink(destination: RegisterView()){
                Text("Créer un compte")
                    .padding(.top, 12)
                    .foregroundStyle(.blue)
            }
            Spacer()
        }
    }
}


#Preview {
    LoginView()
}
