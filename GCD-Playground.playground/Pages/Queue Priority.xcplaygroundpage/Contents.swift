//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/*:
### Priorities:
 1. userInteractive
 2. userInitiated
 3. utility
 4. default
 5. background
*/

func task(_ symbol: String) {
    for _ in 1...10 {
        print(symbol)
    }
}

let userInteractiveQueue = DispatchQueue.global(qos: .userInteractive)
let userInitiatedQueue = DispatchQueue.global(qos: .userInitiated)
let utilityQueue = DispatchQueue.global(qos: .utility)
let backgroundQueue = DispatchQueue.global(qos: .background)
let defaultQueue = DispatchQueue.global()

userInteractiveQueue.async {
    task("userInteractive")
}

userInitiatedQueue.async {
    task("userInitiated")
}

defaultQueue.async {
    task("default")
}

utilityQueue.async {
    task("utility")
}

backgroundQueue.async {
    task("background")
}

//: [Next](@next)
