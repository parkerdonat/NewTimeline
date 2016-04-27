//
//  Post.swift
//  NewTimeline
//
//  Created by Parker Donat on 4/26/16.
//  Copyright © 2016 Parker Donat. All rights reserved.
//

import Foundation

class Post: Equatable {
    
    let username: String
    let imageEndpoint: String
    let caption: String?
    let comments: [Comment]
    let likes: [Like]
    var identifier: String?
    var endPoint: String {
        return "posts"
    }
    
    init(username: String = "", imageEndpoint: String, caption: String?, comments: [Comment] = [], likes: [Like] = [], identifier: String? = nil) {
        
        self.username = username
        self.imageEndpoint = imageEndpoint
        self.caption = caption
        self.comments = comments
        self.likes = likes
        self.identifier = identifier
    }
}

func ==(lhs: Post, rhs: Post) -> Bool {
    
    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
}

/*
 
 imageEndpoint: String
 caption: String?
 username: String
 comments: [Comment]
 likes: [Like]
 identifier: String?
 endPoint: String { return “posts” }

 */