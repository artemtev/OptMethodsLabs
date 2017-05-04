//
//  Lab9.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func newtonFirstModification(function: (Double) -> Double, firstDerivative: (Double) -> Double, secondDerivative: (Double) -> Double) {
    print("Newtom method with first modification")
    let g = 0.001
    
    var x = 7.0
    var i = 1
    
    repeat {
        print("Iteration: \(i). Final dot: ", terminator: "")
        print(x)
        if abs(firstDerivative(x)) <= g {
            break
        }
        x = x - firstDerivative(x)/secondDerivative(x)
        i += 1
    } while abs(firstDerivative(x)) >= g
}
