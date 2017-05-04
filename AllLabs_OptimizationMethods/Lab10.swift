//
//  Lab10.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func crossectionMethod(function: (Double) -> Double, firstDerivative: (Double) -> Double, interval: (Double, Double)) {
    print("Crossection method.")
    var x0 = 7.0
    var x1 = 8.0
    var x2 = 10.0
    
    let g = 0.001

    var i = 1
    
    repeat {
        x2 = (firstDerivative(x1)*x0 - firstDerivative(x0)*x1)/(firstDerivative(x1) - firstDerivative(x0))
        print("Iteration: \(i). Final dot: \(x2)")
        if abs(firstDerivative(x2)) <= g {
            break
        } else {
            if firstDerivative(x1) < 0 {
                x0 = x2
            } else {
                x1 = x2
            }
        }
        
        i += 1
    } while true
}
