//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Sophie Berger on 10.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import UIKit

@IBDesignable //allows interface builder to look like runtime
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currenclyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currenclyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8)
        currenclyLbl.textAlignment = .center
        currenclyLbl.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        currenclyLbl.layer.cornerRadius = 5.0
        currenclyLbl.clipsToBounds = true
        
        //displaying hte currency of the users current location
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currenclyLbl.text = formatter.currencySymbol
        
        //adding the currencyLbl as a subview to the other labels
        addSubview(currenclyLbl)
        
    }
    
    //need to call this function for @IBDesignable to work
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    //when the textField (app) is loaded it will run this code
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    //as the included code has to be within both functions above
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        
        //placeholder is a property of a textField
        //initializing the placeholder text if nil code will not run
        //if not nil attributedStrign will be created
        if let p = placeholder{
            //setting color of placeholder text
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            
            //attributedPlaceholder is a property of textField
            //will override standard placeholder
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
