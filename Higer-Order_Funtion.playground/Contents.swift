import Foundation
/*
let arr = [1,2,3,4,5]
func isEven(_ i: Int) -> Bool {
    return i % 2 == 0
}
let evens = arr.filter(isEven(_:))
let evens2 = arr.filter{ $0 % 2 == 0 }

func multiply(_ a: Int) -> (Int) -> Int {
    func multi(_ b: Int) -> Int {
        return a * b
    }
    return multi(_:)
}

let area = multiply(10)(20)

func multiply2(_ a: Int) -> (Int) -> Int {
    return { b in
        return a * b
    }
}

let x10 = multiply2(10)
let area2 = x10(20)
*/

let f: (Int) -> Bool = { a in
    return a % 2 == 0
}
let s: (Int, Int) -> Int = { (a, b) in
    return a + b
}

func solution(_ nums: [Int]) -> Int {
    return nums.filter(f).reduce(0, s)
}

