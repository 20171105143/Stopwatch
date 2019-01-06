//
//  ViewController.swift
//  Stopwatch
//
//  Created by zgy on 2018/12/20.
//  Copyright © 2018 zgy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var secondD: UITextField!
    
    @IBOutlet weak var minutedD: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var Count = 0.00
    var Playing = false  //计时状态＝否
    var second = 60
    var minute = 2
    var temp = ""
    var temp2 = ""
    var timer :Timer!
    
    @IBAction func start(_ sender: Any) {
        temp = secondD.text!
        second = Int(temp)!
        temp2 = minutedD.text!
        minute = Int(temp2)!
        minutedD.isEnabled = false
        secondD.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(1),target:self,selector: #selector(tickDown),userInfo:nil,repeats:true)
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
    }
    @objc func tickDown(){
        second += 1
        if second == 60{
            second = 0
            minute+=1
            if minute == 60{
                timer.invalidate()
                
            }
        }
        secondD.text = "\(second)"
        minutedD.text = "\(minute)"
    }
}
