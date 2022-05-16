class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var result = Bool()
        let catX = String(x)
        let reversedX = String(catX.reversed())
        
        if catX == reversedX {
            result = true
        }
        else if catX != reversedX {
            result = false
        }
        
        return result
    }
}