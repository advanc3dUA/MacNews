//
//  FindImage.swift
//  MacNews
//
//  Created by advanc3d on 13.08.2022.
//

import Foundation

extension String {
    func getImage() -> String? {
        if self.contains("img src=") {
            print("true")
            
        } else {
            print("false")
            return nil
        }
        
        var imgStartIndex: Int?
        var imgEndIndex: Int?
        
        for (index, char) in self.enumerated() {
            if char == "<" &&
            self[self.index(self.startIndex, offsetBy: index + 1)] == "i" &&
            self[self.index(self.startIndex, offsetBy: index + 2)] == "m" {
                imgStartIndex = index + 10
                break
            }
        }
        
        for (index, char) in self.enumerated() {
            if char == "." &&
            (self[self.index(self.startIndex, offsetBy: index + 1)] == "j" || self[self.index(self.startIndex, offsetBy: index + 1)] == "p") &&
            (self[self.index(self.startIndex, offsetBy: index + 2)] == "p" || self[self.index(self.startIndex, offsetBy: index + 2)] == "n") {
                if self[self.index(self.startIndex, offsetBy: index + 3)] == "g" {
                    imgEndIndex = index + 3
                    break
                } else if self[self.index(self.startIndex, offsetBy: index + 3)] == "e" && self[self.index(self.startIndex, offsetBy: index + 4)] == "g" {
                    imgEndIndex = index + 4
                    break
                }
            }
        }
        let imageLink = self[self.index(startIndex, offsetBy: imgStartIndex!)...self.index(startIndex, offsetBy: imgEndIndex!)]
        //print(imageLink)
        return String(imageLink)
    }
}
