class Solution {//time: O(n) space: O(1)
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        } 
        else { 
            var t = 1
            for i in 1..<nums.count {
                if (nums[i] != nums[i-1]) {
                    nums[t] = nums[i]
                    t += 1
                }
            }
            return t
        }
    }
}