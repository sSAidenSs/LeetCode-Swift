class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.count <= 2 {
            return -1
        }
        var left = 0
        var right = nums.reduce(0, +)
        for i in 0 ..< nums.count { 
            right -= nums[i]
            if left == right {
                return i
            }
            left += nums[i]
        }
        return -1
    }
}
