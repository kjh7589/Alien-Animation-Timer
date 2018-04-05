//
//  ViewController.swift
//  Alien Animation Timer
//
//  Created by D7703_25 on 2018. 4. 5..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var myTimer = Timer()
    
    @IBOutlet weak var ImageV: UIImageView!
    
    @IBOutlet weak var Lab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Lab.text = String(counter)
    }

    @IBAction func BtS(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func BtF(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        ImageV.image = UIImage(named: "frame\(counter).png")
        Lab.text = String(counter)
    }
    
}
