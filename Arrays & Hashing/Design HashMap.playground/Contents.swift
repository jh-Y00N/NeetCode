import Foundation

class MyHashMap {
    var myMap: [Int: Int]
    
    init() {
        myMap = [:]
    }
    
    func put(_ key: Int, _ value: Int) {
        myMap[key] = value
    }
    
    func get(_ key: Int) -> Int {
        return myMap[key] ?? -1
    }
    
    func remove(_ key: Int) {
        myMap[key] = nil
    }
}

let myHashMap = MyHashMap()

myHashMap.put(1, 1)
for r in myHashMap.myMap {
    print(r)
}

myHashMap.put(2, 2)
for r in myHashMap.myMap {
    print(r)
}


print(myHashMap.get(1))

print(myHashMap.get(3))

myHashMap.put(2, 1)
for r in myHashMap.myMap {
    print(r)
}


print(myHashMap.get(2))

myHashMap.remove(2)
for r in myHashMap.myMap {
    print(r)
}


print(myHashMap.get(2))

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
