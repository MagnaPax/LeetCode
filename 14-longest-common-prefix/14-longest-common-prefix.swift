class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var common = strs[0]
        
        for char in strs {
            while !char.hasPrefix(common){
                common = String(common.dropLast())
            }
        }
        
        return common
    }
}