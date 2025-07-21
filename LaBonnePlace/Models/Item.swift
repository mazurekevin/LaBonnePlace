//
//  Item.swift
//  LaBonnePlace
//
//  Created by teamdoc on 21/07/2025.
//

import Foundation
import SwiftyJSON

struct ItemDTO: Identifiable {
    var id: Int64
    var name: String
    var price: Float
    var place: String
    var idUser: Int
    var idCategory: Int
    var comments: [CommentDTO]?

    init(json: JSON) {
        id = json["id"].int64Value
        name = json["name"].stringValue
        price = json["price"].floatValue
        place = json["place"].stringValue
        idUser = json["idUser"].intValue
        idCategory = json["idCategory"].intValue
        comments = json["comments"].arrayValue.map { CommentDTO(json: $0) }
    }
    
    init(id: Int64, name: String, price: Float, place: String, idUser: Int, idCategory: Int) {
        self.id = id
        self.name = name
        self.price = price
        self.place = place
        self.idUser = idUser
        self.idCategory = idCategory
    }
}
