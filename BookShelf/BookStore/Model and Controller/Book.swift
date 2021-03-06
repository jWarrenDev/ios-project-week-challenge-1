
//
//  File.swift
//  BookShelf
//
//  Created by Jerrick Warren on 10/30/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class Book {
    
    let name: String
    let image: String?
    let author: String
    var review: String?
    var read: Bool // toggle
    
    init(name: String, image: String, author: String, review: String? = "", read: Bool = false) {
         self.name = name
         self.image = image
         self.author = author
         self.review = review
         self.read = read
    }
    
}
