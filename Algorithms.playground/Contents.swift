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

let myList = [0, 1, 3, 5, 5, 7, 9]
binarySearch(myList, item: 5)

//O(1)
func getFirst(_ array: [Int]) -> Int {
    return array[0]
}

getFirst(myList)

//O(N)
func getSumm(_ array: [Int]) -> Int {
    var sum = 0
    for (_, item) in array.enumerated() {
        sum = sum + item
    }
    return sum
}

getSumm(myList)

//O(N^2)
func getFirstPair(_ array: [Int]) -> Int? {
    for i in 0..<array.count - 1 {
        for j in (i + 1)..<array.count {
            if array[i] == array[j] {
                return array[i]
            }
        }
    }
    return nil
}

getFirstPair(myList)

