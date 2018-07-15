//: [Previous](@previous)

import Foundation

func isPrime(_ value: Int) -> Bool {
  var result = true
  for i in 2 ..< value {
    if value % i == 0 {
      result = false
      break
    }
  }
  return result
}

isPrime(17)
isPrime(21)

//: [Next](@next)
