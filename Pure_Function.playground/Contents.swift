import Foundation

/*
var sum = 0
func solution(_ nums: [Int]) -> Int {
    for i in nums {
        sum += i
    }
    return sum
}
*/

// 순수 함수로 변경

func solution(_ nums: [Int]) -> Int {
    var sum = 0
    for i in nums {
        sum += i
    }
    return sum
}

// sum을 외부에서 변경 가능하기 때문에 내부로 위치 변경
