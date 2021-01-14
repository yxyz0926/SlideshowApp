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

    }

}
