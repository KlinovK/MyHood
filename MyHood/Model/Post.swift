//
//  Post.swift
//  MyHood
//
//  Created by Константин Клинов on 6/30/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDesc: String

    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
    
}
