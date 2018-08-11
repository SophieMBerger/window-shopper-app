//
//  Wage.swift
//  window-shopper
//
//  Created by Sophie Berger on 11.08.18.
//  Copyright © 2018 SophieMBerger. All rights reserved.
//

import Foundation

class Wage {
    
    //class functions can be called without class instantiation, through class referencing eg. Wage.getHours
    //"forWage" and "andPrice" are parameter names (just for understanding)
    //"wage" and "price" are actual variable names
    class func getHours (forWage wage: Double, andPrice price: Double) -> Int {
        
        //ceil rounds up
        return Int(ceil(price/wage))
    }
}
