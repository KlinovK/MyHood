//
//  ViewController.swift
//  MyHood
//
//  Created by Константин Клинов on 6/30/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath: "", title: "First title", description: "First Description")
        let post1 = Post(imagePath: "", title: "First title1", description: "First Description1")

        let post2 = Post(imagePath: "", title: "First title2", description: "First Description2")
        
        posts.append(post)
        posts.append(post1)
        posts.append(post2)
        
        tableView.reloadData()

        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        }
        return PostCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    
    }

}

