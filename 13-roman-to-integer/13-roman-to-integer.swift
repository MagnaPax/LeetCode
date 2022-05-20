class Solution {
func romanToInt(_ s: String) -> Int {
    
    let romanNumerlas : [String:Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    var sumResult = Int()
    var needToSkip = Bool(false)
    var numberToAdd = Int()
    
    for i in 0...s.count-1  {
        // 빼기 계산 뒤 중복계산 방지 위해
        if needToSkip == true {
            needToSkip = false
            continue
        }
        
        let indexCurrent = s.index(s.startIndex, offsetBy: i)
        let indexNext = s.index(s.startIndex, offsetBy: i+1)
        let keyCurrent = s[indexCurrent]
        
        var keyNext = Character("A")    // A 는 아무 의미 없음. 더미 값 넣기
        if i != s.count-1 {             // out of bound 방지
            keyNext = s[indexNext]
        }

        let conditionI = (keyCurrent == "I") && ((keyNext == "V") || (keyNext == "X"))
        let conditionX = (keyCurrent == "X") && ((keyNext == "L") || (keyNext == "C"))
        let conditionC = (keyCurrent == "C") && ((keyNext == "D") || (keyNext == "M"))
        
        // print("현재키값: \(keyCurrent), 다음키값: \(keyNext)")
        
        numberToAdd = romanNumerlas[String(keyCurrent)] ?? 0
        
        
        // 빼기 구현
        if conditionI || conditionX || conditionC {
            needToSkip = true
            numberToAdd = (romanNumerlas[String(keyNext)] ?? 0) - (romanNumerlas[String(keyCurrent)] ?? 0)
            sumResult += numberToAdd

            // print("빼야될문자:\(keyCurrent)\(keyNext)\t 결과값:\(numberToAdd)")
            continue
        }
        
        sumResult += numberToAdd
        
        // print("\(keyCurrent)에 해당하는 숫자: ", numberToAdd, "\t누적값: \(sumResult) \n")
    }
    return sumResult
}

}