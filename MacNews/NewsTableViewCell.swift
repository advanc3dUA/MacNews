//
//  NewsTableViewCell.swift
//  MacNews
//
//  Created by advanc3d on 12.08.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {    
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var titleImageImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        titleLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 800)
//        titleLabel.sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
