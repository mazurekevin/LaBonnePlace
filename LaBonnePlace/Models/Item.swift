//
//  Item.swift
//  LaBonnePlace
//
//  Created by teamdoc on 21/07/2025.
//

import Foundation
import SwiftyJSON

struct Item: Identifiable {
    var id: Int64
    var name: String
    var price: Float
    var place: String
    var idUser: Int
    var idCategory: Int
    var comments: [Comment]

    init(json: JSON) {
        id = json["id"].int64Value
        name = json["name"].stringValue
        price = json["price"].floatValue
        place = json["place"].stringValue
        idUser = json["idUser"].intValue
        idCategory = json["idCategory"].intValue
        comments = json["comments"].arrayValue.map { Comment(json: $0) }
    }
}
