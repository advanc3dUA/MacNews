//
//  ViewController.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {

    var parser = XMLParser()
    var currentPostArray = Post()
    var finalPostsArray: [Post] = []
    var content = ""
    
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "MacRumor"
        delegateTableView()
        createParser()
    }
}


