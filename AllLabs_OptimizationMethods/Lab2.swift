//
//  Lab2.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func dychotomia(function: (Double) -> Double, interval: (Double, Double)) {
    var a = interval.0
    var b = interval.1
    let epsilon = 0.0001
    print("Dychotomia method")
    
    var f1: Double
    var f2: Double
    
    var l: Double
    l = b-a
    let g = 0.01
    
    var i = 0
    
    var x1: Double
    var x2: Double
    
    repeat {
        print("Iteration: \(i). Final dot:", terminator: " ")
        print((a+b)/2)
        if !(l>=g) {
            break
        }
        x1 = (a+b)/2 - epsilon/2
        x2 = x1+epsilon
        
        f1 = function(x1)
        f2 = function(x2)
        
        if f1 >= f2 {
            a = x1
        } else {
            b = x2
        }
        l = b-a
        i += 1
    } while l>=g
}
