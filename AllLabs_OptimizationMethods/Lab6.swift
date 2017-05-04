//
//  Lab6.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func pauell(function: (Double) -> Double, interval: (Double, Double)) {
    var i, n: Int
    print("Pauell method.")
    var a = interval.0
    var b = interval.1
    var x1, x2, x3, f1, f2, f3: Double
    let gx = 0.01
    let gf = 0.001
    x1 = a
    x3 = b
    x2 = (b+a)/2
    
    f1 = function(x1)
    f2 = function(x2)
    f3 = function(x3)
    var fmin, fmax, fbySearchX, xmin, xmax, searchX: Double
    
    searchX = 0.0
    var a1, a2: Double
    i = 0
    var xs = [x1, x2, x3]
    var fs = [f1, f2, f3]
    repeat {
        i += 1
        print("Iteration: \(i). Final dot: ", terminator: "")
        print(searchX)
        fmin = min(fs[0], fs[1], fs[2])
        fmax = max(fs[0], fs[1], fs[2])
        xmin = xs[fs.index(of: fmin)!]
        xmax = xs[fs.index(of: fmax)!]
        a1 = (fs[1]-fs[0])/(xs[1]-xs[0])
        a2 = (1/(xs[2]-xs[1]))*((fs[2]-fs[0])/(xs[2]-xs[0])-a1)
        searchX = -a1/(2*a2)+(xs[0]+xs[1])/2
        if a2 < 0 {
            searchX = 2*xmin - xmax
        }
        
        fbySearchX = function(searchX)
        if (abs((fmin-fbySearchX)/fbySearchX) >= gf) && (abs((xmin-searchX)/searchX) >= gx) {
            xs[xs.index(of: xmax)!] = searchX
            fs[0] = function(xs[0])
            fs[1] = function(xs[1])
            fs[2] = function(xs[2])
        } else {
            break
        }
        
    } while (abs((fmin-fbySearchX)/fbySearchX) >= gf) && (abs((xmin-searchX)/searchX) >= gx)
}
