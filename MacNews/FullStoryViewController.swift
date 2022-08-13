//
//  FullStoryViewController.swift
//  MacNews
//
//  Created by advanc3d on 13.08.2022.
//

import UIKit

class FullStoryViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionTextView.text = text
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
