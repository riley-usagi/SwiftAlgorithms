//: [Previous](@previous)

import Foundation

func averageOf(numbers: Int...) -> Float {
  let numberTotal = numbers.count
  if numberTotal == 0 {
    return 0
  }

  var sum = 0
  
  for number in numbers {
    sum += number
  }
  return Float(sum)/Float(numberTotal)
}

averageOf(numbers: 10, 56, 75, 90, 109)
averageOf(numbers: 10, 20, 30)
averageOf()
averageOf(numbers: 10, 20, 30)

//: [Next](@next)
