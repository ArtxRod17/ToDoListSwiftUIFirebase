//
//  User.swift
//  ToDoList
//
//  Created by Arturo Rodriguez on 6/30/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
