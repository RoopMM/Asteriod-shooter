//
//  User.swift
//  NewMobileAppProject
//
//  Created by Roop Malhans on 2021-12-14.
//

import Foundation


struct User: Identifiable{
    var id: String = UUID().uuidString
    var name: String
    var score: String
}