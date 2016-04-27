//
//  Like.swift
//  NewTimeline
//
//  Created by Parker Donat on 4/26/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import Foundation

class Like {
    
    let username: String
    let postIdentifier: String
    var identifier: String?
    
    init(username: String, postIdentifier: String, identifier: String? = nil) {
        
        self.username = username
        self.postIdentifier = postIdentifier
        self.identifier = identifier
    }
}

func ==(lhs: Like, rhs: Like) -> Bool {
    
    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}

/*
 username: String
 postIdentifier: String
 identifier: String?
 endPoint: String
 */