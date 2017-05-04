//
//  Lab4.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func goldCrossection(function: (Double) -> Double, interval: (Double, Double)) {
    var i: Int
    print("Gold cross-section method")
    var a = interval.0
    var b = interval.1
    var x1, x2, f1, f2: Double
    let g = 0.01
    var l: Double
    
    x2 = a+(b-a)*(sqrt(5.0)-1.0)/2
    x1 = a+b-x2
    
    f1 = function(x1)
    f2 = function(x2)
    
    
    l = b-a
    
    i = 0
    
    repeat {
        print("Iteration: \(i). Final dot: ", terminator: "")
        print((a+b)/2)
        if f1<=f2 {
            b = x2
            x2 = x1
            f2 = f1
            x1 = a+b-x2
            f1 = function(x1)
        } else {
            a = x1
            x1 = x2
            f1 = f2
            x2 = a+(b-a)*(sqrt(5.0)-1.0)/2
            f2 = function(x2)
        }
        i += 1
        l = b-a
    } while l >= g
}
