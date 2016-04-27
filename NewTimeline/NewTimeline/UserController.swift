//
//  UserController.swift
//  NewTimeline
//
//  Created by Parker Donat on 4/27/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import Foundation

class UserController {
    
    var currentUser: User! = UserController.mockUsers().first
    
    static let sharedController = UserController()
    
    static func createUser(username: String, identifier: String, completion: (success: Bool, user: User?) ->Void) {
        completion(success: true, user: mockUsers().first)
    }
    
    static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
        completion(user: mockUsers().first)
    }
    
    static func fetchAllUsers(completion: (users: [User]) -> Void) {
        completion(users: mockUsers())
    }
    
    static func authenticateUser(email: String, password: String, completion: (success: Bool, user: User?) -> Void) {
        completion(success: true, user: mockUsers().first)
    }
    
    static func followUser(user: User, completion: (success: Bool) -> Void) {
        completion(success: true)
    }
    
    static func followedByUser(user: User, completion: (followed: [User]?) -> Void) {
        completion(followed: mockUsers())
    }
    
    static func logoutUser() {
        
    }
    
    static func mockUsers() -> [User] {
        
        let user1 = User(username: "hansolo", identifier: "1234")
        let user2 = User(username: "ob1kenob", identifier: "2356")
        let user3 = User(username: "3po", identifier: "3456")
        let user4 = User(username: "leia", identifier: "4567")
        
        return [user1, user2, user3, user4]
    }
}
