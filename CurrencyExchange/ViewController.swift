//
//  ViewController.swift
//  CurrencyExchange
//
//  Created by Robert Wais on 7/3/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var buttonLayoutCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiUpdate()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        var tag = sender.tag
        print("The button tag is \(tag)")
        if tag == 12 {
            //Value C
        }else{
            //Number 1-9 or .
        }
    }
    
    func calculateExchange(){
        //Take both strings, conver them
    }
    
    func uiUpdate(){
        for button in buttonLayoutCollection {
            button.layer.borderWidth = 0.5
            button.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    

}

