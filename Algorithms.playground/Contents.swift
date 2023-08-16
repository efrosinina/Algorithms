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

func removeDuplicates(input: inout [Int]) -> Int {
    var last: Int?
    var index = 0
    while index < input.count {
        if input[index] == last {
            input.remove(at: index)
        } else {
            last = input[index]
            index += 1
        }
    }
    return input.count
}

func findUnsortedSubarray(array: [Int]) -> Int {
    let n = array.count
    var maxNum: Int = array[0]
    var end = 0
    var minNum: Int = array[n - 1]
    var start = 1
    for (index, currentItem) in array.enumerated() {
        maxNum = max(maxNum, currentItem)
        if currentItem < maxNum {
            end = index
        }
    }
    
    for (index, _) in array.enumerated() {
        minNum = min(minNum, array[n - 1 - index])
        if array[n - 1 - index] > minNum {
            start = n - 1 - index
        }
    }
    return end - start + 1
}

findUnsortedSubarray(array: [1, 4, 2, 3, 2, 6])

var sortedArray = [0, 0, 1, 1, 3, 4, 4, 4, 5, 5, 8]
removeDuplicates(input: &sortedArray)

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

