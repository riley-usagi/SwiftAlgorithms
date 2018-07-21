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

//: Ещё один вариант решения данной задачи:

//: Напишем функцию проверки числа на простоту, исходя из того, что наименьший собственный делитель (НСД) числа n:Int <= Int(sqrt(Double(n))).
//: Если НСД не равен двум, то он - нечетный (вообще-то, НСД будет не только нечетным, но и простым числом, но нам это не поможет). Доказательства - от противного.

// Функция принимает число на проверку, возвращает true, если число простое, и false, если число составное
func isPrimeVersionTwo(_ numberToCheck: Int) -> Bool {
  
  // Первый кандидат в НСД - единственное четное простое число
  var nsdTry: Int = 2
  
  // В поисках НСД проверим 2 и пробежимся по нечетным >2, меньшим или равным целой части кв. корня из проверяемого числа
  while nsdTry <= Int(sqrt(Double(numberToCheck))) {
    
    // Если НСД найден - возвращаем false, число составное
    if numberToCheck%nsdTry == 0 {
      return false
    }
    
    // Проверяем следующий нечетный
    nsdTry += nsdTry % 2 + 1
  }
  
  // Цикл не нашел НСД, возвращаем true, число простое
  return true
}

print(isPrimeVersionTwo(17))

//: [Next](@next)
