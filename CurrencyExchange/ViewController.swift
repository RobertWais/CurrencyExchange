//
//  ViewController.swift
//  CurrencyExchange
//
//  Created by Robert Wais on 7/3/18.
//  Copyright © 2018 Robert Wais. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var initialLbl: UILabel!
    @IBOutlet weak var convertedLbl: UILabel!
    
    
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
        
        if tag==11 {
            print("Here")
             initialLbl.text=""
        }else if tag == 10{
            initialLbl.text = "\(String(describing: initialLbl.text!))."
        }else {
            initialLbl.text = "\(String(describing: initialLbl.text!))\(tag)"
        }
        calculateExchange()
    }
    
    func calculateExchange(){
        guard let currencyText = self.initialLbl.text,
            var amount = Double(currencyText) else {
                print("wont work")
                return
        }
        amount = amount*0.86
        amount = (100 * amount).rounded() / 100
        convertedLbl.text = String(format: "%.2f", amount)
        //Take both strings, conver them
    }
    
    func uiUpdate(){
        var index = 1
        for button in buttonLayoutCollection {
            button.layer.borderWidth = 0.5
            button.layer.borderColor = UIColor.white.cgColor
            button.backgroundColor = #colorLiteral(red: 0.2838629484, green: 0.2838629484, blue: 0.2838629484, alpha: 1)
            button.titleLabel?.tintColor = UIColor.white
            button.setTitleColor(UIColor.white, for: .normal)
        }
    }
}

