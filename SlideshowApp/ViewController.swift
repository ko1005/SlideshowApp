//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 航輝のMacBook Pro on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //画像の読み込み
    var image = ["画像0.jpeg","画像1.jpeg","画像2.jpeg"
                                 ]
    
    var tapCount = 1
    

    //配列に指定するindex番号を宣言
    var imageIndex = 0
    

    //タイマーを格納するプロパティ変数timerの宣言
    var timer:Timer?
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named:image[imageIndex])
        
    }
    
    
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var responductionButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    

    //進むボタン　IBAction
    @IBAction func nextButton(_ sender: Any) {
        
        if imageIndex == 2 {
        imageIndex = 0
    }
    else {
    imageIndex += 1
        }
        imageView.image = UIImage(named:image[imageIndex])
    }
    
   
    
    //戻るボタン　IBAction
    @IBAction func backButton(_ sender: Any) {
        
        if imageIndex == 0{
            imageIndex = 2
        }else{
            imageIndex -= 1
        }
        imageView.image = UIImage(named:image[imageIndex])
        
    }
    
    //再生ボタンを押した時の処理　　IBAction
    @IBAction func responductionButton(_ sender: Any) {
        
        if  self.timer != nil {
            
        
            responductionButton.setTitle("再生", for: UIControl.State.normal)
            timer?.invalidate()
            timer = nil
            backButton.isEnabled = true
            nextButton.isEnabled = true
            
            
        }else{
            responductionButton.setTitle("停止", for: UIControl.State.normal)
            
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            
            backButton.isEnabled = false
            nextButton.isEnabled = false
            
        }
        
    }
    
    @objc func onTimer(_ timer: Timer) {
        
        if imageIndex == 2 {
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        
        imageView.image = UIImage(named:image[imageIndex])

    }
    
    //UIImageViewから画面遷移する
    
    @IBAction func closeUPButton(_ sender: Any) {
        
        if self.timer != nil {
            self.timer!.invalidate()
            self.timer = nil
            
        }
        
            
            
        
        }
        
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let closeUPViewController:CloseUPViewController = segue.destination as! CloseUPViewController
         
        closeUPViewController.image = UIImage(named: image[imageIndex])

    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
   
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }

    

}

