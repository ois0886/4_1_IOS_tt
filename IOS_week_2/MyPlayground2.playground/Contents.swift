import Cocoa

var sum = 0

for i in 1...100 {
    sum += i
}

print(sum)
print("==========================================================================")


var numbers = [Int]()

for _ in 1...100 {
    let randomNumber = Int.random(in: 1...100)
    numbers.append(randomNumber)
}

var min = numbers[0]
var max = numbers[0]

for number in numbers {
    if number < min {
        min = number
    }
    
    if number > max {
        max = number
    }
}

print("min: \(min)")
print("max: \(max)")
print("number: \(numbers)")
print("==========================================================================")



var numbers2 = [Int]()

for _ in 1...100 {
    let randomNumber = Int.random(in: 1...100)
    numbers2.append(randomNumber)
}

numbers2.sort { (number1, number2) -> Bool in
    return number1 < number2
}

print(numbers2)
print("==========================================================================")

var numbers3 = [Int]()
for _ in 0..<100 {
    numbers3.append(Int.random(in: 1...1000))
}

numbers3.sort { $0 < $1 }

print(numbers3)
