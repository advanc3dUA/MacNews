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
        //guard let rssFeedURL = URL(string: "https://3dnews.ru/breaking/rss/") else { return }
        guard let parser = XMLParser(contentsOf: rssFeedURL) else { return }
        parser.delegate = self
        parser.parse()
    }
    
    func parserDidStartDocument(_ parser: XMLParser) {
        finalPostsArray.removeAll()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "item" {
            currentPostArray.removeAll()
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        switch elementName {
        case "title": currentPostArray.title = content
        case "link": currentPostArray.link = content
        case "description": currentPostArray.description = content; currentPostArray.image = content.getImage()
        case "pubDate": currentPostArray.date = content
        case "item": finalPostsArray.append(currentPostArray)
        default: return
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        content = string
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        newsTableView.reloadData()
    }
    
}
