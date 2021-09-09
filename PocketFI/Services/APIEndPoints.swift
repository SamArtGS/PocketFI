//
//  APIEndPoints.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

import Foundation

struct APIEndPoint {
    private static let baseURL = "http://10.0.0.16:3000/v1"
    static func setTokenURL (userId: String) -> String {
        return "\(baseURL)/users/\(userId)/set_token"
    }
}
