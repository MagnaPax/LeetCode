class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0...nums.endIndex-1 {
            for j in 0...nums.endIndex-1 {
                if i == j { continue }
                
                if (nums[i] + nums[j]) == target {
                    return [i, j]
                }
            }
            
        }
        
        return [0,0]
    }
}
