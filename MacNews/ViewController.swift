//
//  ViewController.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    let data: [String] = ["first", "second", "third", "fourth", "fifth"]
    
    var posts: [Post] = []
    var parser = XMLParser()
    var tempPost: Post? = nil
    var tempElement: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateTableView()
        createParser()
    }    
}


