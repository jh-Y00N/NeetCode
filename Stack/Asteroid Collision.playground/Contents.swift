import Foundation

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var asteroidStack = [Int]()
    var removeAsteroid = false
    for asteroid in asteroids {
        if asteroidStack.isEmpty {
            asteroidStack.append(asteroid)
        } else {
            if asteroidStack.last! > 0, asteroid < 0 {
                if abs(asteroidStack.last!) == abs(asteroid) {
                    asteroidStack.removeLast()
                } else if abs(asteroidStack.last!) < abs(asteroid) {
                    asteroidStack.removeLast()
                    while !asteroidStack.isEmpty {
                        if let last = asteroidStack.last, last > 0 {
                            if abs(last) < abs(asteroid) {
                                asteroidStack.removeLast()
                            } else {
                                removeAsteroid = true
                                if abs(last) == abs(asteroid) {
                                    asteroidStack.removeLast()
                                }
                                break
                            }
                        } else {
                            break
                        }
                    }
                    if removeAsteroid {
                        removeAsteroid = false
                    } else {
                        asteroidStack.append(asteroid)
                    }
                }
            } else {
                asteroidStack.append(asteroid)
            }
        }
    }
    return asteroidStack
}

print(asteroidCollision([-2,-2,1,-2]))
