/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        // 파라미터 둘 중에 하나가 nil일때 둘 중에 nil이 아닌것 리턴
        if list1 == nil || list2 == nil { return list1 == nil ? list2 : list1 }
        
        var node = list1
        var node2 = list2
        var containElements : [Int] = []
        var resultNode = ListNode()
        var returnNode = resultNode
        var i = 0
        
        // list1 노드에 있는 값들을 배열에 넣어줌
        while true {
//            print(node!.val)
            containElements.append(Int(node?.val ?? 0))
            if node?.next == nil {break}
            node = node?.next
        }
        
        // list2 노드에 있는 값들을 배열에 넣어줌
        while true {
            containElements.append(Int(node2?.val ?? 0))
            if node2?.next == nil {break}
            node2 = node2?.next
        }
        
        //배열 정렬
        containElements.sort()
        
        // 배열값 가져와서 링크드리스트 생성
        // 마지막 빈 Node를 연결하기 전에 탈출
        while true {
            let nextTempNode = ListNode()
            // print(containElements[i], type(of: containElements[i]))
            resultNode.val = containElements[i]
            i += 1
            if i == containElements.count {break}
            resultNode.next = nextTempNode
            resultNode = nextTempNode
            
        }
        
        return returnNode
    }
}