//
//  Lab8.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func newtonRafson(function: (Double) -> Double, firstDerivative: (Double) -> Double, secondDerivative: (Double) -> Double) {
    let g = 0.001
    print("Newton-Rafson method.")
    var x = 7.0
    var i = 0
    
    var f1: Double
    var f2: Double
    var alpha: Double
    var waveX: Double
    var waveF1: Double
    var resultX = 0.0
    var funct: Double
    let gama = 0.5
    var xPlus: Double
    xPlus = 0.0
    
    repeat {
        f1 = firstDerivative(x)
        f2 = secondDerivative(x)
        
        if abs(f1) <= g {
            resultX = x
            break
        }
        
        alpha = 1
        
        waveX = x - alpha*f1/f2
        waveF1 = firstDerivative(waveX)
        print("Iteration: \(i). Final dot: ", terminator: "")
        print(waveX)
        if abs(waveF1) <= g {
            break
        }
        
        funct = function(waveX)
        
        if (funct - function(x)) <= gama*alpha*pow(f1, 2.0)/f2 {
            xPlus = waveX
            if abs(firstDerivative(xPlus))<=g {
                resultX = xPlus
            } else {
                if alpha <= g {
                    resultX = x
                }
            }
        } else {
            alpha = alpha/2.0
        }
        
        x = xPlus
        i += 1
        
    } while true
}
