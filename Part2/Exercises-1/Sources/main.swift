// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// Declare a constant named exercises with an initial value of 10. Declare a variable named exercisesSolved with an initial value of 0. Increment this variable every time you solve an exercise, including this one.

let exercises = 10
var exercisesSolved = 0

exercisesSolved += 1

// Add parentheses to the following expression. The parentheses should show the order in which the operators are applied and should not change the value of the expression.

print(5 * 3 - 4 / 2 * 2)

print((5 * 3) - ((4 / 2) * 2))

exercisesSolved += 1

// Declare two variables, a and b, of type Double and assign values to both. Then, write a piece of code to swap the values of a and b and print the results.

var a = 3.14
var b = 2.71

let temp = a
a = b
b = temp

exercisesSolved += 1

// Calculate the average of a and b and store it in a constant named average.
// Do you know why it’s important that a and b are of type Double? 

let average = (a + b) / 2 // If a and b were of type Int, the result would be an integer.

exercisesSolved += 1

// A temperature expressed in °C can be converted to °F by multiplying the temperature by 1.8 and then adding 32. In this exercise, you’ll do the reverse: convert a temperature from °F to °C.
// Declare a constant named fahrenheit and assign it a value. Calculate the corresponding temperature in °C and store it in a constant named celsius.

let fahrenheit = 25
let celsius = Double(fahrenheit - 32) / 1.8

exercisesSolved += 1

// Suppose the squares on a chessboard are numbered left-to-right, top-to-bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top-to-bottom, 0 to 7. Columns are numbered left-to-right, 0 to 7:

// Declare two variables, row and column, and assign each a value between 0 and 7. Calculate the corresponding square number and store it in a variable named position.
// Next, do the inverse. Assign position a value between 0 and 63. Calculate the corresponding row and column numbers and store them in row and column.

var row = 3
var column = 4

let position = row * 8 + column

let position2 = 63
let row2 = position2 / 8
let column2 = position2 % 8

exercisesSolved += 1

// Declare two constants, dividend and divisor, of type Double, and assign both a value. Calculate the quotient and remainder of an integer division of dividend by divisor, and store the results in constants quotient, of type Int, and remainder, of type Double. Calculate the remainder without using the % operator.

let dividend = 10.0
let divisor = 3.0

let quotient = Int(dividend / divisor)
let remainder = dividend - Double(quotient) * divisor

exercisesSolved += 1

// A circle is made up of radians, which correspond with 360 degrees. Declare a constant named degrees and assign it an initial value. Calculate the corresponding angle in radians and store it in a constant named radians.

var degrees = 180
let radians = Double(degrees) * Double.pi / 180

exercisesSolved += 1

// Declare four constants, x1, y1, x2, and y2, to represent the 2-dimensional coordinates of two points. Use the following formula to calculate the distance (d) between these points:
// Store the result in a constant named distance.

let x1 = 1.0
let y1 = 1.0
let x2 = 4.0
let y2 = 5.0

let distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))

exercisesSolved += 1

// Increment exercisesSolved one final time, then print the percentage of exercises you solved. This should be an integer between 0 and 100.

exercisesSolved += 1

let percentage = exercisesSolved * 100 / exercises
print(percentage)