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

func reverseString(string: inout [Character]) {
    var last = string.count - 1 // указатели
    var first = 0
    while first < last {
        let temp = string[first]
        string[first] = string[last]
        string[last] = temp
        first += 1
        last -= 1
    }
}

var charArray: [Character] = ["L", "e", "t", "'", "s", " ", "g", "o"]
reverseString(string: &charArray)

func sameLength(firstString: String, secondString: String) -> Bool {
    var countDifferent = 0
    for i in 0...firstString.count - 1 {
        let indexFirst = firstString.index(firstString.startIndex, offsetBy: i)
        let indexSecond = firstString.index(secondString.startIndex, offsetBy: i)
        if firstString[indexFirst] != secondString[indexSecond] {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func notSameLength(firstString: String, secondString: String) -> Bool {
    var countDifferent = 0
    var i = 0
    while i < secondString.count {
        let indexFirst = firstString.index(firstString.startIndex, offsetBy: i + countDifferent)
        let indexSecond = firstString.index(secondString.startIndex, offsetBy: i)
        if firstString[indexFirst] == secondString[indexSecond] {
            i += 1
        } else {
            countDifferent += 1
            if countDifferent > 1 {
                return false
            }
        }
    }
    return true
}

func onlyOneDifference(firstString: String, secondString: String) -> Bool {
    if firstString.count - secondString.count >= 2 || secondString.count - firstString.count >= 2 {
        return false
    } else if firstString.count == secondString.count {
        return sameLength(firstString: firstString, secondString: secondString)
    } else if firstString.count > secondString.count {
        return notSameLength(firstString: firstString, secondString: secondString)
    } else {
        notSameLength(firstString: secondString, secondString: firstString)
    }
    return true
}

onlyOneDifference(firstString: "hello", secondString: "llo")


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

