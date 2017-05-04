//
//  AllMehods.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func all(function: (Double) -> Double, firstDerivative: (Double) -> Double, secondDerivative: (Double) -> Double, firstDot: Double) {
    let interv = interval(function: function, firstDot: firstDot)
    print("------------------")
    dychotomia(function: function, interval: interv)
    print("------------------")
    halfDividing(function: function, interval: interv)
    print("------------------")
    goldCrossection(function: function, interval: interv)
    print("------------------")
    fibonacci(function: function, interval: interv)
    print("------------------")
    pauell(function: function, interval: interv)
    print("------------------")
    newton(function: function, firstDerivative: firstDerivative, secondDerivative: secondDerivative)
    print("------------------")
    newtonRafson(function: function, firstDerivative: firstDerivative, secondDerivative: secondDerivative)
    print("------------------")
    newtonFirstModification(function: function, firstDerivative: firstDerivative, secondDerivative: secondDerivative)
    print("------------------")
    crossectionMethod(function: function, firstDerivative: firstDerivative, interval: interv)
    print("------------------")
    
    
}
