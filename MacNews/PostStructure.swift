//
//  PostStructure.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import Foundation

struct Post {
    var title: String?
    var image: String?
    var link: String?
    var date: String?
    var description: String?
    
    public mutating func removeAll() {
        self.title = nil
        self.image = nil
        self.link = nil
        self.date = nil
        self.description = nil
    }
}
