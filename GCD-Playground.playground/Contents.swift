//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

func task(_ symbol: String) {
    for _ in 1...10 {
        print(symbol)
    }
}

//: # Test

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

utilityQueue.async {
    task("utility")
}

backgroundQueue.async {
    task("background")
}

defaultQueue.async {
    task("default")
}
