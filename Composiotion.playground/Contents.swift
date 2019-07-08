import Foundation
import UIKit
/*
func f1(_ i: Int) -> Int {
    return i * 2
}

func f2(_ i: Int) -> String {
    return "\(i)"
}

let result = f2(f1(100))

func ff(_ pf1: @escaping (Int) -> Int, _ pf2: @escaping (Int) -> String) -> (Int) -> String {
    return { i in
        return pf2(pf1(i))
    }
}

let f3 = ff(f1(_:), f2(_:))
let result2 = f3(100)

func comp<A, B, C> (_ pf1: @escaping (A) -> B, _ pf2: @escaping (B) -> C) -> (A) -> C {
    return { i in
        return pf2(pf1(i))
    }
}

let f4 = comp(f1, f2)
let result3 = f4(100)
*/
func comp<A, B, C>(_ pf1: @escaping (A) -> B,
                   _ pf2: @escaping (B) -> C) -> (A) -> C {
    return { i in
        return pf2(pf1(i))
    }
}

func filterEven(_ ns: [Int]) -> [Int] {
    return ns.filter{ $0 % 2 == 0 }
}

func sum(_ ns: [Int]) -> Int {
    return ns.reduce(0, {$0 + $1})
}

let filteredSum = comp(filterEven, sum)

func solution(_ nums: [Int]) -> Int {
    return filteredSum(nums)
}
