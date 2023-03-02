//
//  main.swift
//  abc088b
//

import Foundation

let numOfCards = Int(readLine()!)!
var cards = readLine()!.split(separator: " ").map({Int($0)!})

// カードを降順で並べ替え
cards.sort(by: >)

// Aliceから順番にカードを引いていく
var sumAlice = 0
var sumBob = 0
for i in 0 ..< numOfCards {
    if (i % 2 == 0) {
        sumAlice = sumAlice + cards[i]
    } else {
        sumBob = sumBob + cards[i]
    }
}

// AliceとBobの得点差を出力
print(sumAlice - sumBob)
