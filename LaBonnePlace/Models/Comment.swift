//
//  Comment.swift
//  LaBonnePlace
//
//  Created by teamdoc on 21/07/2025.
//

import Foundation
import SwiftyJSON

struct CommentDTO: Identifiable {
    var id: Int64
    var content: String
    var userId: Int64
    var itemId: Int64

    init(json: JSON) {
        id = json["id"].int64Value
        content = json["content"].stringValue
        userId = json["user"]["id"].int64Value
        itemId = json["item"]["id"].int64Value
    }
}
