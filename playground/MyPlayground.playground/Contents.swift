import UIKit


var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.7
reading3 = 9.2

if let r1 = reading1,
   let r2 = reading2,
   let r3 = reading3 {
    let avgReading = (r1+r2+r3)/3
    print(avgReading)
} else {
    let errorString = "instrument reported a reading that was nil."
    print(errorString)
}





var str = "Hello, playground"
str = "Hello, Swift!"
let constStr = str

var nextYear: Int = 0
var temperature: Float = 0
var hasPet: Bool = true

var arrayOfInts: Array<Int> = []
var arrayOfStrings: [String] = []
var dictOfCapitalsByCountry: [String:String] = [:]
var winningLotteryNumbers: Set<String> = []

let number = 42
let fmStation = 91.2

var countingUp = ["one", "two"]
countingUp.count
let nameByParkingSpace = [13: "Alice", 27: "Bob"]
let space13Assignee = nameByParkingSpace[13]
let space44Assignee = nameByParkingSpace[44]

if let space13Assignee = nameByParkingSpace[13] {
    print(space13Assignee)
}

for (space, name) in nameByParkingSpace{
    let permit = "space \(space): \(name)"
    print(permit)
}

let secondElement = countingUp[1]
countingUp.append("three")

let emptyString = String()
emptyString.isEmpty
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let meaningOfLife = String(42)

let availableRooms = Set([205, 201, 501])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)

let easyPi = 3.14

let floatFromDouble = Float(easyPi)

let floatingPi: Float = 3.14

enum PieType: Int {
    case apple = 0
    case cherry = 1
    case pecan = 2
}

let pieRawValue = PieType.pecan.rawValue

if let pieType = PieType(rawValue: pieRawValue) {
    print(pieType)
}

let compareAsscending = {(i: Int, j: Int) -> Bool in
    return i < j
}

compareAsscending(42, 2)
compareAsscending(-2, 1)

var numbers = [42, -2, 1, 2]

numbers.sort(by: compareAsscending)
numbers.sort (by: {( i, j) -> Bool in
    return i < j
})

let favoritePie = PieType.apple

let name: String
switch favoritePie {
case .apple:
    name = "apple"
case .cherry:
    name = "cherry"
case .pecan:
    name = "pecan"
}








