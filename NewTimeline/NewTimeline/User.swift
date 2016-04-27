//
//  User.swift
//  NewTimeline
//
//  Created by Parker Donat on 4/26/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import Foundation

class User: Equatable {
    
    var username = ""
    var identifier: String?
    var endPoint: String {
        return "users"
    }
    
    init(username: String, identifier: String) {
        self.username = username
        self.identifier = identifier
    }
}

func ==(lhs: User, rhs: User) -> Bool {
    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}


/* 
 userName: String
 imageEndpoint: String
 identifier: String?
 endPoint: String { return “users” }
 */