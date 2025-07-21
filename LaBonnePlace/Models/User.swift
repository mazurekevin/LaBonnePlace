//
//  User.swift
//  LaBonnePlace
//
//  Created by teamdoc on 21/03/2025.
//

import Foundation
import SwiftyJSON
struct UserDTO: Identifiable {
    var id: Int
    var firstname: String
    var lastname: String
    var mail: String
    var password: String
    

    init(json: JSON) {
        id = json["id"].intValue
        firstname = json["firstname"].stringValue
        lastname = json["lastname"].stringValue
        mail = json["mail"].stringValue
        password = json["password"].stringValue
    }
}
