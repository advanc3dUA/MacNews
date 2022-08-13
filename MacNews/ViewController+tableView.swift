//
//  ViewController+tableView.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    public func delegateTableView() {
        newsTableView.delegate = self
        newsTableView.dataSource = self
        newsTableView.rowHeight = 75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        finalPostsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        cell.backgroundColor = .lightGray
        
        let postForCurrentRow = finalPostsArray[indexPath.row]
        cell.titleTextView.text = postForCurrentRow.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
