//
//  Model.swift
//  realApp
//
//  Created by Dmytro Gavrylov on 03.11.2022.
//

import Foundation

struct Model: Codable {
    var access_token: String
    var expires_in: Int
    var token_type: String
}
