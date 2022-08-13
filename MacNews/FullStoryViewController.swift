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
    
    var text: String?
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionTextView.text = text
        
        if imageName != nil {
            let image = UIImage(named: imageName!)
            storyImage.image = image
        //TODO: need to download remote photo
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
