//: [Previous](@previous)
import Foundation

func digitSum(of number: Int) -> Int
{
  if(number < 10)
  {
    return number
  }
  else
  {
    return number % 10 + digitSum(of: (number / 10))
  }
}

digitSum(of: 17)

//: [Next](@next)
