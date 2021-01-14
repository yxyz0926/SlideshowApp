//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Yu iwawaki on 2020/12/21.
//  Copyright © 2020 Yu iwawaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backImageButton: UIButton!
    @IBOutlet weak var slideButton: UIButton!
    @IBOutlet weak var nextImageButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var tapButton: UITapGestureRecognizer!
    
    let imageName = ["owl_pic.jpg", "dog_pic.jpg", "squirrel_pic.jpg"]
    var changeImageNo = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        imageView.image = UIImage(named: imageName[0])
        
    }
    
    
    @IBAction func nextImage(_ sender: Any) {
        
        changeImageNo += 1
        
        if changeImageNo == 3 {
            changeImageNo = 0
            
        }
        
        imageView.image = UIImage(named: imageName[changeImageNo])
        
    }
    
    
    @IBAction func backImage(_ sender: Any) {
        
        changeImageNo -= 1
        
        if changeImageNo == -1 {
            changeImageNo = 2
        }
        
        imageView.image = UIImage(named: imageName[changeImageNo])
        
    }
    
    
    
    
    @objc func changeImage(){
        
        changeImageNo += 1
        
        if changeImageNo == imageName.count {
            changeImageNo = 0
        }
        self.imageView.image = UIImage(named: imageName[changeImageNo])
        
    }

    
    var timer: Timer!
    
    @IBAction func startOrStop(_ sender: Any) {

        
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)

            slideButton.setTitle("停止", for: .normal)

            nextImageButton.isEnabled = false
            backImageButton.isEnabled = false


        } else {
            self.timer.invalidate()
            self.timer = nil

            slideButton.setTitle("再生", for: .normal)

            nextImageButton.isEnabled = true
            backImageButton.isEnabled = true
        }
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "toTap" {
            
            let bigViewController = segue.destination as! BigViewController
            bigViewController.x = imageName[changeImageNo]
            }
        if self.timer != nil {
            self.timer.invalidate()
            self.startOrStop(slideButton as Any)
            
        }
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        }

    
}
