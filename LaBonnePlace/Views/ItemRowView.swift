//
//  ItemRowView.swift
//  LaBonnePlace
//
//  Created by teamdoc on 21/07/2025.
//

import Foundation
import SwiftUI

struct ItemRowView: View {
    let item: ItemDTO
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 15) {
                Text(item.name)
                    .font(.headline)
                HStack{
                    Text(item.place)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("\(item.price, specifier: "%.2f") €")
                        .font(.subheadline)
                        .bold()
                    
                }
                
            }

            Spacer()
        }
        //.background(Color.blue)
        .padding(.vertical, 8)
    }
}


#Preview {
    ItemRowView(item: ItemDTO(id: 1, name: "Chaise", price: 49.99, place: "Paris", idUser: 1, idCategory: 1))
}
