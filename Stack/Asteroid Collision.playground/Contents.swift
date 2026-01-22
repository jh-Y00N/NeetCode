import Foundation

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var asteroidStack = [Int]()
    var removeAsteroid = false
    for asteroid in asteroids {
        if asteroidStack.isEmpty {
            asteroidStack.append(asteroid)
        } else {
            if asteroidStack.last! + asteroid == 0 {
                asteroidStack.removeLast()
            } else if asteroidStack.last! + asteroid < 0 {
                while !asteroidStack.isEmpty {
                    if let last = asteroidStack.last, last > 0 {
                        if last + asteroid < 0 {
                            asteroidStack.removeLast()
                        } else {
                            removeAsteroid = true
                            if last + asteroid == 0 {
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
            } else {
                asteroidStack.append(asteroid)
            }
        }
    }
    return asteroidStack
}

print(asteroidCollision([-2,-2,1,-2]))
