//
//  ViewController.swift
//  window-shopper
//
//  Created by Sophie Berger on 10.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating a button with a specific size
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        //what should happen if the button is pressed
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //displaying the calcButton when text is entered in the textFields
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
    }
    
    //@objc because #selectors (calling a function at a later time) are an Objective-C function
    @objc func calculate(){
        print("We got here")    }

  


}

