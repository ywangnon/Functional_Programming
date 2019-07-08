import Foundation

func filterSum(_ ns: [Int], _ n: Int) -> Int {
    return ns.filter({ $0 % n == 0 }).reduce(0, +)
}

func filterSum2(_ n: Int) -> ([Int]) -> Int {
    return { nums in
        return nums.filter{ $0 % n == 0 }.reduce(0, +)
    }
}

func solution(_ nums: [Int], _ r: Int) -> Int {
    let filteredR = filterSum2(r)
    return filteredR(nums)
}
