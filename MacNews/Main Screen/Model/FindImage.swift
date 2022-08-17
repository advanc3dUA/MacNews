//
//  FindImage.swift
//  MacNews
//
//  Created by advanc3d on 13.08.2022.
//

import Foundation

extension String {
    
    func getImageName() -> String? {
        guard let imgSrcRange = self.range(of: "img src=") else { return nil }
        var imageLink = ""
        
        let imageLinkStartIndexDistance = self.distance(from: startIndex, to: imgSrcRange.upperBound)
        
        let imageLinkStartIndex = self.index(self.startIndex, offsetBy: imageLinkStartIndexDistance + 1)

        let leftIndicesRange = imageLinkStartIndex..<self.endIndex
        
        for index in self.indices[leftIndicesRange] {
            if self[index] == "\"" {
                imageLink = String(self[imageLinkStartIndex..<index])
                return imageLink
            }
        }
        return nil
    }
}
