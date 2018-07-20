//: [Previous](@previous)
import Foundation
//: ## Простые числа
//: > Простое число это число, которое делится только на единицу и на само себя.

/// Является ли число простым.
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
