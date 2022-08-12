//
//  ViewController+NSXMLParser.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import Foundation
import UIKit

extension ViewController: XMLParserDelegate {
    public func createParser() {
        guard let rssFeedURL = URL(string: "https://feeds.macrumors.com/MacRumors-All") else { return }
//        guard let rssFeedURL = URL(string: "https://3dnews.ru/breaking/rss/") else { return }
        guard let parser = XMLParser(contentsOf: rssFeedURL) else { return }
        parser.delegate = self
        parser.parse()
    }
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("parse error: ", parseError)
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        tempElement = elementName
        if elementName == "item" {
            tempPost = Post(title: "", link: "", date: "")
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            if let post = tempPost {
                posts.append(post)
            }
            tempPost = nil
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        guard let post = tempPost else { return }
        let str = string
        if tempElement == "title" {
            tempPost?.title = post.title ?? "no title" + str
        }
        
        if tempElement == "link" {
            tempPost?.link = post.link ?? "no link" + str
        }
        
        if tempElement == "pubDate" {
            tempPost?.date = post.date ?? "no date" + str
        }
    }
    
}
