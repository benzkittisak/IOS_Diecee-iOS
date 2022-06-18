//
//  ViewController.swift
//  Diecee-iOS
//
//  Created by Kittisak Panluea on 18/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceIV1: UIImageView!
    @IBOutlet weak var diceIV2: UIImageView!
    
    
    
    //    เมื่อ Application มันโหลดขึ้นมาจะให้ทำอะไร เหมือน onCreate ใน Android แหละ
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //        สั่งให้เปลี่ยนรูปภาพใน Xcode 13 เราจะใช้ #imageLiteral() แบบนอ้แล้วก็เลือกรูปเลย
        diceIV1.image = #imageLiteral(resourceName: "DiceSix")
        //        ปรับค่า aplha ของ element ก็ทำได้นา
        //        diceIV1.alpha = 0.5
        diceIV2.image = #imageLiteral(resourceName: "DiceTwo")
               
    }
    
    @IBAction func rollBtn(_ sender: UIButton) {
        print("Button got tapped.")
        diceIV1.image = #imageLiteral(resourceName: "DiceFour")
        diceIV2.image = #imageLiteral(resourceName: "DiceFour")
    }
}

