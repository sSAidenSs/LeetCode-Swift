class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if (k == nums.count) {
            return;
        }
        let copy = nums;
        for i in 0..<nums.count {
            nums[(i + k) % nums.count] = copy[i];
        }
    }
}