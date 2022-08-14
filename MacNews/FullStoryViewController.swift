//
//  FullStoryViewController.swift
//  MacNews
//
//  Created by advanc3d on 13.08.2022.
//

import UIKit

class FullStoryViewController: UIViewController {

    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var imageBottomConstraint: NSLayoutConstraint!
    
    var text: String?
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var modifiedText = text?.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        modifiedText = modifiedText?.replacingOccurrences(of: "&zwnj;", with: "", options: .regularExpression, range: nil)
        
        descriptionTextView.text = modifiedText
        
        if imageName != nil {
            setImageWith(stringName: imageName!, imageView: storyImage)
            storyImage.contentMode = .scaleAspectFill
        } else {
            storyImage.isHidden = true
            imageBottomConstraint.isActive = false
            print("hidden")
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
