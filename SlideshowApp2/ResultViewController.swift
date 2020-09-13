//
//  ResultViewController.swift
//  SlideshowApp2
//
//  Created by 山本 夏紀 on 2020/09/09.
//  Copyright © 2020 natsuki.yamamoto2. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //-----------------------------------------------------
    
    @IBOutlet weak var imageView: UIImageView!
    
    //--表示している画像の名前を受け取る変数---------------------
    
    var imageName:String = ""
    
    //--テストコメント（削除可）-------------------------------
    //-----------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named:imageName)
    }
    
    //-----------------------------------------------------
    
    @IBAction func backButton(_ sender: Any) {
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
