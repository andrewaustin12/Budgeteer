//
//  User.swift
//  Budgeteer
//
//  Created by andrew austin on 10/13/23.
//

import Foundation

struct User: Identifiable {
    let id: UUID
    let username: String
    let email: String
    
    static var mockUser: User {
        return User(id: UUID(), username: "JohnDoe", email: "johndoe@gmail.com")
    }
}

