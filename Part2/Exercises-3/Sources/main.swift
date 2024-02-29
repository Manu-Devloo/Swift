// The Swift Programming Language
// https://docs.swift.org/swift-book

// exercise 3.1

func fromCelciusToFahrenheit(celcius: Double) -> Double {
    return celcius * 1.8 + 32
}

func fromFahrenheitToCelcius(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) / 1.8
}

print(fromCelciusToFahrenheit(celcius: 100))
print(fromFahrenheitToCelcius(fahrenheit: 212))

// exercise 3.2

func fromDegreesToRadians(degrees: Double) -> Double {
    return degrees * Double.pi / 180
}

func fromRadiansToDegrees(radians: Double) -> Double {
    return radians * 180 / Double.pi
}

print(fromDegreesToRadians(degrees: 180))
print(fromRadiansToDegrees(radians: 4))

// exercise 3.3

func fromIntegerToBinary(integer: Int) -> String {
    return String(integer, radix: 2)
}

print (fromIntegerToBinary(integer: 13))

// exercise 3.4

func fromIntegerToHexadecimal(integer: Int) -> String {
    return String(integer, radix: 16)
}

print (fromIntegerToHexadecimal(integer: 13))

// exercise 3.5

func fibonacci(n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibonacci(n: n - 1) + fibonacci(n: n - 2)
    }
}

print(fibonacci(n: 10))

// exercise 3.6

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

print(factorial(n: 5))