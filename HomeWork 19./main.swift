//
//  main.swift
//  HomeWork 19.
//
//  Created by Staff on 23.07.22.
//

import Foundation



//1. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է value -ի արժեքը մեծացնի a ով։

protocol Plus {
      static func +(s: Self, d: Double) -> Self
}
extension Double:Plus {
    
    static func +(s:Double, d:Double) {
        return s + d
    }
    }
    
func changeValue<T: Plus>(value:T, a1:Double) {
    print(value + a1)
    
}

changeValue(value: 4, a1: 4.5)

//2. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է value -ի արժեքը մեծացնի a անգամ։


protocol Bazmapatkum {
    static func *(s: Self, d: Double) -> Self
    
}

extension Double:Bazmapatkum {
    static func *(s:Double, d:Double) {
        return s * d
    }
}

func changeValuee<T: Bazmapatkum>(Value:T, a:Double) {
    print(Value * a)
    
}
changeValuee(Value: 5, a: 2.5)

//3. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a անգամ և վերադարձնի նոր մասիվը։



protocol Bazzm {
    static func *(a:Self, b:Self) -> Self
}

extension Double: Bazzm {
    static  func *(a:[Double], b:Double) {

        }
        
    }

func changeArrayValue<T: Bazzm>(arr:[T], a:T) -> [T] {
    var c:[T] = []
    for item in arr {
        c.append(item * a)
    }
    return c
}

print(changeArrayValue(arr: [2, 2.5, 3], a: 2))

//4. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a ով և վերադարձնի նոր մասիվը։

protocol ArrPlus {
    static func +(arr:Self, a:Self) -> Self
    
}
extension Double : ArrPlus {
    static func +(a:[Double], b:Double) {

    }
}

func changeArrayValuee<T: ArrPlus>(arr:[T], a:T) -> [T] {
    var d:[T] = []
    for item in arr {
        d.append(item + a)
    }
    return d
}

print(changeArrayValuee(arr: [3, 4.4, 7, 8], a: 1.1))

