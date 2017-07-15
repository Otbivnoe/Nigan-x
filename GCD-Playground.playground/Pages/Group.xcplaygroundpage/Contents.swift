//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/// Sync

let group = DispatchGroup()

for i in 0...3 {
    DispatchQueue.global().async(group: group) {
        sleep(1)
        print("\(i)")
    }
}

print("before")
group.notify(queue: DispatchQueue.main) {
    print("FINISH")
}

/// Async

// group.enter()
// group.leave()

//: [Next](@next)
