//
//  ViewController.swift
//  MultiScreen
//
//  Created by nb1's MacBookPro on 11/3/2561 BE.
//  Copyright © 2561 napat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberLabel: UILabel!
//    Explicit
    var myClass = MyClass()
    var timer = Timer()
    
    
    @IBAction func playItemButton(_ sender: Any) {
        let myNumber = setupNumber()
        myClass.numberAInt = myNumber
        
        print("Current Number ==> \(myClass.numberAInt)")
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.runTime), userInfo: nil, repeats: true)
    }
    @IBAction func pauseButtonItem(_ sender: Any) {
        timer.invalidate()
        
    }
    @IBAction func stopButtonItem(_ sender: Any) {
        numberLabel.text = "1"
        timer.invalidate()
    }
    
    @objc func runTime() -> Void {
        
        numberLabel.text = String(myClass.increaseNumber())
        
    }
    
    func setupNumber() -> Int {
        let returnNumber = Int(numberLabel.text!)
        return returnNumber!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

