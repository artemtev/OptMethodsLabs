//
//  Lab3.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func halfDividing(function: (Double) -> Double, interval: (Double, Double)) {
    var a = interval.0
    var b = interval.1
    print("Half dividing method")
    
    var f1: Double
    var f2: Double
    var fm: Double
    
    var l: Double
    l = b-a
    let g = 0.01
    
    var i = 0
    
    var x1: Double
    var x2: Double
    var xm: Double
    
    repeat {
        xm = (a+b)/2
        fm = function(xm)
        x1 = a+l/4.0
        x2 = b - l/4
        f1 = function(x1)
        f2 = function(x2)
        print("Iteration: \(i). Final dot: ", terminator: "")
        print((a+b)/2)
        
        if f1 < fm {
            b = xm
            xm = x1
            fm = f1
        } else if f1 >= fm {
            if f2 < fm {
                a = xm
                xm = x2
                fm = f2
            } else if f2 >= fm {
                a = x1
                b = x2
                
            }
        }
        
        l = b - a
        i += 1
    } while l>=g
}
