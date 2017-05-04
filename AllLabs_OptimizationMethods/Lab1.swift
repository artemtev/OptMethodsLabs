//
//  Lab1.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func interval(function: (Double) -> Double, firstDot: Double) -> (Double, Double){
    let x0 = firstDot
    let deltaX = 1.0
    var x = [Double]()
    print("Swenn method.")
    
    x.append(x0)
    
    var f1: Double
    var f2: Double
    
    var i = 1
    
    repeat {
        x.append(x[i-1]+pow(2.0, Double(i-1))*deltaX)
        f1 = function(x[i-1])
        f2 = function(x[i])
        
        print("Iteration: \(i). Interval: ", terminator: "")

        if f1<f2 {
            print("(\(x[i-1]);\(x[i]))")
            return (x[i-1], x[i])
        }
        i += 1
    } while f1>f2
    return (0.0, 0.0)
}
