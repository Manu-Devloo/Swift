// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// exercise 2.1

let row = 2
let column = 3

let pos = row * 8 + column
var nextPos = pos + 1

if pos == 63 {
    nextPos = 0
}

print(nextPos)


// exercise 2.2

let a:Double = 1
let b:Double = 12
let c:Double = 10

let formulla =  pow(b, 2) - (4 * a * c)

if formulla < 0 {
    print("No answer.")
} else if formulla == 0 {
    let x = (-b + sqrt(formulla)) / (2 * a)
    print("One answer: \(x)")
} else {
    let x1 = (-b + sqrt(formulla)) / (2 * a)
    let x2 = (-b - sqrt(formulla)) / (2 * a)
    print("Two answers: \(x1) and \(x2)")
}

// exercise 2.3

let b1 = true, b2 = false, b3 = true

(b1 && b2) || ((b1 && (!b2)) && b3)

// exercise 2.4

let month = 2
let year = 2024

var days = 0

if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
    days = 31
} else if (month == 4 || month == 6 || month == 9 || month == 11) {
    days = 30
} else if (month == 2) {
    if year % 4 == 0 {
        days = 29
    } else {
        days = 28
    }
}

print(days)

// exercise 2.5

let number1 = 16 // check if number is power of 2

if number1 & (number1 - 1) == 0 {
    print("Yes")
} else {
    print("No")
}

// exercise 2.6

var index = 1
var output = 1
while index <= 10 {
    print(output)
    output *= 2
    index += 1
}

// exercise 2.7

var n = 13
var number = 0
var number2 = 1
var temp = number

index = 1

while index <= n {
    temp = number
    number = number2
    number2 = temp + number2
    index += 1
}

print(number)

// exercise 2.8

n = 8
var sum = n

while (n - 1) > 0 {
    sum = sum * (n - 1)
    n -= 1
}

print(sum)

// exercise 2.9

//Given a number of pips between 2 and 12, calculate the odds of rolling this number of pips using two six-sided dice.

let pips:Double = 5
var odds:Double = 0

if pips <= 7{
    odds = (pips - 1) / (6 * 6)
    print("in if")
} else {
    odds = (13 - pips) / (6 * 6)
}

print(odds * 100 , "%")