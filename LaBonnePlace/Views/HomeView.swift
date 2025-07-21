//
//  HomeView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 11/06/2025.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let items: [ItemDTO] = [
        ItemDTO(id: 1, name: "Chaise", price: 49.99, place: "Paris", idUser: 1, idCategory: 1),
        ItemDTO(id: 2, name: "Table", price: 89.99, place: "Lyon", idUser: 2, idCategory: 2),
        ItemDTO(id: 3, name: "Lampe", price: 19.99, place: "Marseille", idUser: 3, idCategory: 3),
        ItemDTO(id: 4, name: "Canapé", price: 299.99, place: "Bordeaux", idUser: 4, idCategory: 4),
        ItemDTO(id: 5, name: "Tapis", price: 59.99, place: "Toulouse", idUser: 5, idCategory: 5)
    ]

    var body: some View {
        NavigationView {
            List(items) { item in
                ItemRowView(item: item)
            }
            .navigationTitle("Accueil")
        }
    }
}

#Preview {
    HomeView()
}

