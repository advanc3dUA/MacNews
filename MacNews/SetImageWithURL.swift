//
//  GetImageFromURL.swift
//  MacNews
//
//  Created by advanc3d on 14.08.2022.
//

import Foundation
import UIKit

func setImageWith(stringName: String, imageView: UIImageView) {
    guard let url = URL(string: stringName) else { return }
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data, error == nil else { return }
        DispatchQueue.main.async {
            imageView.image = UIImage(data: data)
        }
    }
    task.resume()
}
