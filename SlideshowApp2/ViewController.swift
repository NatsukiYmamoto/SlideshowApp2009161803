//
//  ViewController.swift
//  SlideshowApp2
//
//  Created by 山本 夏紀 on 2020/09/09.
//  Copyright © 2020 natsuki.yamamoto2. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    //再度コミット、プッシュ2009140815
    
    //--imageViewに画像を表示する------------------------------
    
    @IBOutlet weak var imageView: UIImageView!
    
    //--最初に「imageName」に表示する画像の名前は"image1.jpg"----
    
    var imageName: String = "image1.jpg"
    
    //--タイマー---------------------------------------------
    
    var timer: Timer!
    
    var image1: UIImage!
    
    //--viewがLoadされたら------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1枚目の画像を表示
        imageView.image = UIImage(named:"image1.jpg")
        
    }
    
    //-----------------------------------------------------
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.imageName = imageName
    }
    
    //--進むボタンタップ時のアクション-------------------------
    @IBAction func susumu(_ sender: Any) {
    
        // 関数を実行するように変更
        imagesusumu()
        
        // 上記のimagesusumu関数に移行
        //        if imageName == "image1.jpg" {
        //            imageName = "image2.jpg"
        //        } else if imageName == "image2.jpg" {
        //            imageName = "image3.jpg"
        //        } else if imageName == "image3.jpg" {
        //            imageName = "image1.jpg"
        //        }
        
        imageView.image = UIImage(named:imageName)
    }
    
    //--関数imagesusumuの内容-------------------------------
    
    func imagesusumu() {
        if imageName == "image1.jpg" {
            imageName = "image2.jpg"
        } else if imageName == "image2.jpg" {
            imageName = "image3.jpg"
        } else if imageName == "image3.jpg" {
            imageName = "image1.jpg"
        }
        //imageName = image1.jpg
        
        imageView.image = UIImage(named:imageName)
    }
    //--戻るボタンタップ時のアクション--------------------------
   
    @IBAction func modoru(_ sender: Any) {
    
        imagemodoru()
        imageView.image = UIImage(named:imageName)
    }
    //--関数imagemodoruの内容-------------------------------
    
    func imagemodoru(){
        if imageName == "image1.jpg" {
            imageName = "image3.jpg"
        } else if imageName == "image2.jpg" {
            imageName = "image1.jpg"
        } else if imageName == "image3.jpg" {
            imageName = "image2.jpg"
        }
    }
    
    //--再生ボタンをタップする2秒毎に自動でスライドする--------------------
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBAction func jidouokuri(_ sender: Any) {
        
        // 停止中は自動送り開始
        if self.timer == nil {
            // ボタンの文字を停止にする
            playButton.setTitle("停止", for: .normal)
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        } else {
            // ボタンの文字を開始にする
            playButton.setTitle("開始", for: .normal)
            // 自動送り中は停止
            self.timer.invalidate()
            self.timer = nil
        }
        
    }
    
    //-----------------------------------------------------
    
    @objc func updateTimer(_ timer: Timer) {
            // 画像をスライド
            imagesusumu()
        }
    //----他の画面から segue を使って戻ってきた時に呼ばれる-------------
    
   @IBAction func unwind(_ segue: UIStoryboardSegue) {
    
    }
    
}

