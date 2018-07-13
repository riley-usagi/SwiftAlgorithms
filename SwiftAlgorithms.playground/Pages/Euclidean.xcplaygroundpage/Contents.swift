//: [Назад](@previous)
import Foundation

//: > Алгори́тм Евкли́да — эффективный алгоритм для нахождения наибольшего общего делителя двух целых чисел.  

//: В самом простом случае алгоритм Евклида применяется к паре положительных целых чисел и формирует новую пару, которая состоит из меньшего числа и разницы между большим и меньшим числом. Процесс повторяется, пока числа не станут равными. Найденное число и есть наибольший общий делитель исходной пары.

var a = 256
var b = 456

/// Greatest common divisor (наибольший общий делитель)
func gcd(a: inout Int, b: inout Int) -> Int {
  var t = 0
  while b != 0 {
    t = b
    b = a % b
    a = t
  }
  return a
}

gcd(a: &a, b: &b)

//: Или более компактный вариант:
func anotherOneGCD(c: Int, d: Int) -> Int {
  if d == 0 { return a }
  return anotherOneGCD(c: d, d: c % d)
}

anotherOneGCD(c: 256, d: 456)

//: [Далее](@next)
