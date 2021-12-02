//
//  CloseUPViewController.swift
//  SlideshowApp
//
//  Created by 航輝のMacBook Pro on 2021/12/02.
//

import UIKit

class CloseUPViewController: UIViewController {
    
    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView2.image = image

        // Do any additional setup after loading the view.
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

