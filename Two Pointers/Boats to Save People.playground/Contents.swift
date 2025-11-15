import Foundation

func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    var count = people.count(where: {$0 == limit })
    var peopleLeft = people.filter( { $0 != limit })
    
    var left = 0, right = peopleLeft.count - 1
    peopleLeft.sort()
    
    while peopleLeft.count > 1, left < right {
        if peopleLeft[left] + peopleLeft[right] > limit {
            right -= 1
        } else {
            count += 1
            peopleLeft.remove(at: right)
            peopleLeft.remove(at: left)
            right -= 2
        }
    }
    if peopleLeft.count == 2, peopleLeft[0] + peopleLeft[1] <= limit {
        count += 1
        peopleLeft.removeAll()
    }
    
    return count + peopleLeft.count
}

print(numRescueBoats([3,2,3,2,2], 6))
