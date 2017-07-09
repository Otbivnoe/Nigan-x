//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let delayedQueue = DispatchQueue(label: "com.nikita.delayed", qos: .userInitiated, attributes: [.concurrent, .initiallyInactive])
delayedQueue.async {
    print("execution")
}

sleep(1)
print("lets activate it")

delayedQueue.activate()

/// Also it's possible to run the execution just after a delay

print("\(Date())-before")
let delayedQueue2 = DispatchQueue(label: "com.nikita.delayed", qos: .userInitiated)
delayedQueue2.asyncAfter(deadline: .now() + DispatchTimeInterval.seconds(2)) {
    print("\(Date())-execution2")
}

//: [Next](@next)
