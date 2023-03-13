import Cocoa

var myVariable = 42 // 변수
myVariable += 42
let yourVariable = 42 // 상수
// yourVariable += 52 // error

let inplicitInteger = 70
let implicitDouble = 70.5
let explicitDouble = 70 // 자동형 변환이 되는지... 확인 필망

var myFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"
print(fruitSummary);

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [ "Malcolm":"Captian", "Kaylee":"Mechanic", ]
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()    // let emptyArray: [String] = []
let emptyDictionary = Dictionary<String, Float>() // let emptyDictionary: [String: Float] = [:]

var optionalString: String? = "Hello"    // 옵셔널 변수
optionalString == nil                // false
var optionalName: String? = "John Appleseed"    // 옵셔널 변수
var greeting = "Hello!"              // 논옵셔널 변수
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting);

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore);

let vegetable = "red pepper"
switch vegetable {
case "celery" :
    let vegetableComment = "Add some raisins and make ants on a log"
case "cucumber", "wtercress" :
    let vegetableComment = "That would make a good tea sendwich."
case let x where x.hasSuffix("pepper") :
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup"
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    " Square": [1, 4, 9, 16, 25],
]
var largest = 0
for(kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

var firstForLoop = 0
for i in 1..<4 {
    firstForLoop += i// 1, 2, 3
}
firstForLoop

var secondLoop = 0
for _ in 1...4{
    secondLoop += 1
}
secondLoop

var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
repeat {
    m = m * 2
} while m < 100
m

func greet(name: String, day: String) -> String
{
    return "Hello \(name), today is \(day)."
}

greet(name: "Bob", day: "Tuesday")    // 호출

func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 42, 597, 12)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


func makeIncrementer() -> (Int) -> Int {
    func addOne(number : Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()

print(increment(7))

func hasAnvMatches(list:[Int], condition :(Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number : Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7,12]
hasAnvMatches(list: numbers, condition: lessThanTen)
