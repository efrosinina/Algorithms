import UIKit

// Binary search
func binarySearch(_ list: [Int], item: Int) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        
        if guess == item {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}

let myList = [1, 3, 5, 7, 9]
binarySearch(myList, item: 5)
