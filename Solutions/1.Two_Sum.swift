class Solution1 {//time: O(n^2) space: O(1)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count - 1 {
            for j in i + 1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [nums[i], nums[j]]
                }
            }
        }
        return []
    }
}

class Solution2 {//time: O(n) space: O(n)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()
        for i in 0..<nums.count {
            if let index = dic[target - nums[i]]  {
                return [i, index]
            }
            dic[nums[i]] = i;
        }
        for i in 0..<nums.count {
            if let index = dic[target - nums[i]]  {
                if index != i {
                    return [i, index]
                }
            }
        }
        return []
    }
}

class Solution3 {//time: O(n) space: O(n)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int: Int]()
        for i in 0..<nums.count {
            if let index = dic[target - nums[i]]  {
                return [index, i]
            }
            dic[nums[i]] = i;
        }
        return []
    }
}