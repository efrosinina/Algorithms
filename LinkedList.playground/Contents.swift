import UIKit

class ListNode {
    var value: Int
    var next: ListNode?
    init(value: Int, next: ListNode?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = ListNode(value: 2, next: nil)
let secondNode = ListNode(value: 4, next: thirdNode)
let firstNode = ListNode(value: 3, next: secondNode)

func printList(head: ListNode?) {
    var currentNode = head
    while currentNode != nil {
        print(currentNode?.value ?? "-1")
        currentNode = currentNode?.next
    }
}

printList(head: firstNode)

//MARK: Reverse linked list
//Time: O(N)
func reverseList(head: ListNode?) -> ListNode? {
    var currentNode = head
    var prev: ListNode?
    var next: ListNode?
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    return prev
}

