//
//  ViewController.swift
//  Stopwatch
//
//  Created by zgy on 2018/12/20.
//  Copyright © 2018 zgy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLable: UILabel!

    @IBOutlet weak var PauseButton: UIButton!
    
    @IBOutlet weak var PlayButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var Count = 0.00
    var Playing = false  //计时状态＝否

}

