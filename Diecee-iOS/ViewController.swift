//
//  ViewController.swift
//  Diecee-iOS
//
//  Created by Kittisak Panluea on 18/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var diceIV1: UIImageView!
    @IBOutlet var diceIV2: UIImageView!

    var randomLeftNumber = Int.random(in: 1 ..< 6)
    var randomRightNumber = Int.random(in: 1..<6)
    //    เมื่อ Application มันโหลดขึ้นมาจะให้ทำอะไร เหมือน onCreate ใน Android แหละ
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //        สั่งให้เปลี่ยนรูปภาพใน Xcode 13 เราจะใช้ #imageLiteral() แบบนอ้แล้วก็เลือกรูปเลย
        //        diceIV1.image = #imageLiteral(resourceName: "DiceSix")
        //        ปรับค่า aplha ของ element ก็ทำได้นา
        //        diceIV1.alpha = 0.5
        //        diceIV2.image = #imageLiteral(resourceName: "DiceTwo")
    }

    @IBAction func rollBtn(_ sender: UIButton) {
        //        print("Button got tapped.")
        //        diceIV1.image = #imageLiteral(resourceName: "DiceFour")
        //        diceIV2.image = #imageLiteral(resourceName: "DiceFour")

        //        สร้างอาเรย์มาเก็บรูปภาพที่จะเปลี่ยนลูกเต๋า
        //        การใส่ [leftDiceNumber] ไว้หลัง [] อีกอันหมายความว่าให้เลือกเอารูปที่อาเรย์ตำแหน่งที่ 1 มาใช้
        //        เรียกง่ายๆมันคือเลขตำแหน่งที่จะใช้นั่นแหละ

        diceIV1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][randomLeftNumber]
        diceIV2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][randomRightNumber]
//        สุ่มตัวเลขตั้งแต่ 1 ถึง 5 นั่นแหละ
        randomLeftNumber = Int.random(in: 1 ..< 6)
        randomRightNumber = Int.random(in: 1 ..< 6)
    }
}
