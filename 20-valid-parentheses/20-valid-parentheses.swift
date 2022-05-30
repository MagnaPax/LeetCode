class Solution {
func isValid(_ s: String) -> Bool {
    var temp = s
    var stack = String()
    var parenthesesResult = true
    
//    print(s, temp.popLast() ?? "", type(of: s), temp.append("ha"), temp)
//
//    print(temp.isEmpty)
    
//    print(temp.endIndex)
    
//    print(type(of: temp.prefix(1)))
    
    while !temp.isEmpty {
        
        switch temp.prefix(1) {
        case "(", "{", "[":
            // print("왼쪽괄호", temp.prefix(1))
            stack.append(String(temp.prefix(1)))
        case ")", "}", "]":
            // print("오른쪽괄호", temp.prefix(1))
//            if temp.prefix(1) == ")"
            
            switch temp.prefix(1) {
            case "]":
                if stack.suffix(1) == "[" {stack.removeLast()}
                else {stack.append("wrong")}
//                print(stack.suffix(1))
            case "}":
                if stack.suffix(1) == "{" {stack.removeLast()}
                else {stack.append("wrong")}
            case ")":
                if stack.suffix(1) == "(" {stack.removeLast()}
                else {stack.append("wrong")}
            default:
                print("매치가 안됐다")
            }
            
//            stack.removeLast()
        default:
            print("괄호가아님")
        }
    
        
        // print("temp->\(temp)\tstack->\(stack)")
        // print()
//        temp.popLast()
        temp.removeFirst()
        
//        print(stack.isEmpty)

    }

    // stack에 뭔가 값이 남아있으면 잘못된 것
    if !stack.isEmpty {
        parenthesesResult = false
        // print("스택이 비어있지 않다. 잘못됐다")
    }
    
    // print(parenthesesResult)
    
    return parenthesesResult
}
}