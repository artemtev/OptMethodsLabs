//
//  main.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation


/*func function(_ x: Double) -> Double {
    return sqrt(x+2.0) + (pow((3.0-x), 4.0))/(pow((x+5.0), 2.0))
}

func firstDerivative(_ x: Double) -> Double {
    return -(2.0*pow((3.0 - x), 4.0))/pow((x + 5.0), 3.0) + 1.0/(2.0*sqrt(x + 2.0)) + (4.0*pow((x - 3.0), 3.0))/pow((x + 5.0), 2.0)
}

func secondDerivative(_ x: Double) -> Double {
    return (6.0*pow((3.0 - x),4.0))/pow((x + 5.0), 4.0) + (16.0*pow((3.0 - x), 3.0))/pow((x + 5.0), 3.0) + (12.0*pow((3.0 - x), 2.0))/pow((x + 5.0), 2.0) - 1.0/(4.0*pow((x + 2.0),(3.0/2.0)))
}*/

func function(_ x: Double) -> Double {
    return (2-pow(x, 2.0))*sin(x+0.5)-(2*cos(x+0.5)+1)*x
}

func firstDerivative(_ x: Double) -> Double {
    return pow(x, 2.0)*(-cos(x + 0.5)) - 1.0
}

func secondDerivative(_ x: Double) -> Double {
    return x*(x*sin(x + 0.5) - 2*cos(x + 0.5))
}
/*func function(_ x: Double) -> Double {
    return pow(x, 3.0) + 3.0*pow(x, 2.0) - 9.0*x + 6.0
}*/          //функция на кр

//let firstDot = 0.0
let firstDot = 7.0

all(function: function, firstDerivative: firstDerivative, secondDerivative: secondDerivative, firstDot: firstDot)
