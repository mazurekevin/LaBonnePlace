//
//  ItemDetailView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 23/07/2025.
//

import Foundation
import SwiftUI
struct ItemDetailView: View {
    let item: ItemDTO
    
    var body: some View {
        NavigationView {
            VStack{
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .background(Color.gray.opacity(0.2))
                
                HStack{
                    Text(item.name)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Text("\(item.price, specifier: "%.2f") €")
                        .bold()
                }
                .frame(height: 20)
                .padding()
                HStack{
                    Text(item.place)
                    Spacer()
                }
                .padding(.horizontal, 20)
                Spacer()
                
            }
        }
    }
}

#Preview {
    ItemDetailView(item: ItemDTO(id: 1, name: "Chaise", price: 49.99, place: "Paris", idUser: 1, idCategory: 1))
}
