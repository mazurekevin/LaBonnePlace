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
    var body: some View {
        VStack{
            Spacer()
            Text("LaBonnePlace")
                .font(.title)
                .bold()
            Spacer()
            VStack{
                Spacer()
                TextField("Identifiant", text: $identifiant)
                    .padding()
                    .frame(height: 50.0)
                
                    //.background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 2.0)))
                Spacer()
                SecureField("Mot de passe", text: $password)
                    .padding()
                    .frame(height: 50.0)
                    //.background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 2.0)))
                    
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 150.0)
            //.background(Color.red)
            
            Spacer()
            Button("Valider", action: {
                print("Test")
            })
            .frame(width: 100.0, height: 50.0)
            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 2.0)))
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
