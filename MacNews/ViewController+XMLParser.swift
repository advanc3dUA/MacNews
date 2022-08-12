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
    
    func parserDidStartDocument(_ parser: XMLParser) {
        arrFinal.removeAll()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "item" {
            arrDetail.removeAll()
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "title" || elementName == "link" {
            arrDetail.append(content)
        } else if elementName == "item" {
            arrFinal.append(arrDetail)
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        content = string
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print(arrFinal)
        newsTableView.reloadData()
    }
    
}
