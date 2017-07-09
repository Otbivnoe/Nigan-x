//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func task(_ symbol: String) {
    for _ in 1...10 {
        print(symbol)
    }
}

let queue = DispatchQueue(label: "com.example.workItem", qos: .userInitiated, attributes: [.concurrent])

let item1 = DispatchWorkItem(qos: .background) {
    task("item1 - background")
}

let item2 = DispatchWorkItem(qos: .userInitiated) {
    task("item2 - userInitiated")
}

queue.async(execute: item1)
queue.async(execute: item2)

//: [Next](@next)
