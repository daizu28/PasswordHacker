//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 小林玲衣奈 on 2020/09/03.
//  Copyright © 2020 小林玲衣奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //結果表示用ラベル
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    //カウント表示用ラベル
    @IBOutlet var countLabel: UILabel!
    
    //秘密のパスワード
    var password:Int = 1234
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            
            //解析中の数字を表示する
            countLabel.text = String(i)
            
            //処理を0.005秒、待機する。
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            if i == password{
                //passwordの桁ごとの数字を入れる配列
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                
            }
        }
    }
    
    @IBAction func reset(){
        
        password = 1234
        
        countLabel.text =  "ボタンを押して解析をはじめる"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }

}

