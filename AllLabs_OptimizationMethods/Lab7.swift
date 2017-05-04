//
//  Lab7.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func newton(function: (Double) -> Double, firstDerivative: (Double) -> Double, secondDerivative: (Double) -> Double) {
    print("Newtom method.")
    let g = 0.001
    
    var x = 7.0
    var i = 1
    
    repeat {
        print("Iteration: \(i). Final dot: ", terminator: "")
        print(x)
        let f1 = firstDerivative(x)
        let f2 = secondDerivative(x)
        if abs(f1) >= g {
            x -= f1/f2
        }
        i += 1
    } while abs(firstDerivative(x)) >= g
}
