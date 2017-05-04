//
//  Lab5.swift
//  AllLabs_OptimizationMethods
//
//  Created by Admin on 02.03.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

func fibonacci(function: (Double) -> Double, interval: (Double, Double)) {
    print("Fibonacci method.")
    func nextFibNumber(_ number: Int) -> (Int, Int, Int) {
        var fibs = [Int]()
        fibs.append(1)
        fibs.append(1)
        for i in 2..<16 {
            fibs.append(fibs[i-2]+fibs[i-1])
        }
        
        var temp: Int = 0
        
        for elem in fibs {
            if elem > number {
                temp = elem
                break
            }
        }
        
        return (temp, fibs.index(of: temp)!, fibs[fibs.index(of: temp)!-1])
    }
    
    
    var a = interval.0
    var b = interval.1
    var x1, x2, f1, f2: Double
    let g = 0.01
    var l: Double
    var Fm: Double
    var m: Int
    var k: Int
    var Fk: Double
    var v: Double
    
    x2 = a+(b-a)*(sqrt(5.0)-1.0)/2
    x1 = a+b-x2
    
    f1 = function(x1)
    f2 = function(x2)
    l = b-a
    Fm = Double(nextFibNumber(Int(l/g)).0)
    m = nextFibNumber(Int(l/g)).1
    
    
    Fk = Double(nextFibNumber(Int(l/g)).2)
    
    
    k = m-1
    v = Fk/Fm
    var iter = 0
    x2 = a+v*l
    x1 = a + b - x2
    f1 = function(x1)
    f2 = function(x2)
    while iter < k {
        print("Iteration: \(iter). Final dot: ", terminator: "")
        print((a+b)/2)
        if f1<f2 {
            v = x2
            b = x2
            x2 = x1
            f2 = f1
            x1 = a+b-x2
            f1 = function(x1)
        } else if f1>=f2 {
            a = x1
            x1 = x2
            f1 = f2
            x2 = a + b - x1
            f2 = function(x2)
            
        }
        iter += 1
    }
    

}
