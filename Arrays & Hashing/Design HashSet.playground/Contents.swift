import Foundation

class MyHashSet {
    var mySet = [Int: Bool]()
    
    init() {
        self.mySet = [:]
    }
    
    func add(_ key: Int) {
        mySet[key] = true
    }
    
    func remove(_ key: Int) {
        mySet[key] = false
    }
    
    func contains(_ key: Int) -> Bool {
        return mySet[key] ?? false
    }
}

let result = MyHashSet()

result.add(1)
for r in result.mySet {
    if r.value == true {
        print(r.key)
    }
}

result.add(2)
for r in result.mySet {
    if r.value == true {
        print(r.key)
    }
}

print(result.contains(1))

print(result.contains(3))

result.add(2)
for r in result.mySet {
    if r.value == true {
        print(r.key)
    }
}

print(result.contains(2))

result.remove(2)
for r in result.mySet {
    if r.value == true {
        print(r.key)
    }
}

print(result.contains(2))
/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
