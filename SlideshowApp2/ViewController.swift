//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 山本 夏紀 on 2020/09/09.
//  Copyright © 2020 natsuki.yamamoto2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var image1: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named:"image1.jpg")
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

