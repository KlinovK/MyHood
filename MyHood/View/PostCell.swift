//
//  PostCell.swift
//  MyHood
//
//  Created by Константин Клинов on 6/30/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLblb: UILabel!
    @IBOutlet weak var descLblb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        postImg.layer.cornerRadius = 15
        
    }

    func configureCell(_ post: Post)  {
        titleLblb.text = post.title
        descLblb.text = post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imagePath)
    }
    
    
}
