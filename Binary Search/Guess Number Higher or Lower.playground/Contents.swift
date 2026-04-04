import Foundation

func guessNumber(_ n: Int) -> Int {
    var left = 1, right = n
    var mid = (left + right) / 2
    while left <= right {
        mid = (left + right) / 2
        if guess(mid) == 1 {
            left = mid + 1
        } else if guess(mid) == -1 {
            right = mid - 1
        } else {
            return mid
        }
        
    }
    return mid
}

func guess(_ num: Int) -> Int {
    if num < 6 {
        return 1
    } else if num > 6 {
        return -1
    } else {
        return 0
    }
}

print(guessNumber(10))
//print(guessNumber(1))
//print(guessNumber(2))
