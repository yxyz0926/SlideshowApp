//
//  BigViewController.swift
//  SlideshowApp
//
//  Created by Yu iwawaki on 2020/12/21.
//  Copyright © 2020 Yu iwawaki. All rights reserved.
//

import UIKit

class BigViewController: UIViewController {
    @IBOutlet weak var bigImageView: UIImageView!
    
    
    var x = ""

    override func viewDidLoad() {
        
        bigImageView.image = UIImage(named: x)
        
        
        super.viewDidLoad()

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
