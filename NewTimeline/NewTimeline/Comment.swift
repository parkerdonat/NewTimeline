//
//  Comment.swift
//  NewTimeline
//
//  Created by Parker Donat on 4/26/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import Foundation

class Comment: Equatable {
    
    let username: String
    let text: String
    let postIdentifier: String
    let identifier: String?
//    let endPoint: String {
//        return “posts?\(postIdentifier)/comments/"
//    }
    
    init(username: String, text: String, postIdentifier: String, identifier: String? = nil) {
        self.username = username
        self.text = text
        self.postIdentifier = postIdentifier
        self.identifier = identifier
    }
    
}

func ==(lhs: Comment, rhs: Comment) -> Bool {
    
    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}

/*
 
 username: String
 text: String
 postIdentifier: String
 identifier: String?
 endPoint: String { return “posts?\(postIdentifier)/comments/“ }

 */