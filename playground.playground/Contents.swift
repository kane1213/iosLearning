import UIKit
/*var str = "Hello, playground"
var demo = "Demo, string"
let constant = "csd"
demo = "DEMO TWO"
//HEX
var mhHex = 0x38FA0EA1
var myHex:Int = 0x38F
var tempNum:Double = 1.0
var tmpNum:Int = 1
tempNum += Double(tmpNum)
tempNum += 0.54;

tmpNum += Int(tempNum)

var numbs = [1, 2, 3, 4, 5]
var sum = 0;
//print("I'm is the most basic string: \(demo)")

//for num in numbs {
//    sum += num
//}
//print(sum)

//tulpleNameValue
var bodyStatus = (height: 173, weight: 66, health: "good");
//print("my height is \(bodyStatus.height) , weight is \(bodyStatus.weight) and health is \(bodyStatus.health)")

var tmpTurple = (3,5)
//print(tmpTurple.0)

var binterger = 0b10001
var ointerger = 0o21
var xinterger = 0x11

typealias aaa = UInt64          //型別的設定
var ds:aaa = 14

var num1: Int? = 100
var num2: Int?
num1 = num2

var max8 = UInt8.max
max8 -= 1

//常數和變數的差異 宣告的方式

// Int, UInt8, Uint16
// Double, float
// Boolean , bool
// String
// Turple

//集合類型
var array1 = [Int]()
var array6: [Int] = []

for i in 1...10 {
    array1.append(i)
}
array1.count
array6 = array1.filter { i -> Bool in
    i <= 5
}
array6.count

var product_list = ["product_a",
                    "product_B",
                    "product_C",
                    "product_D"]

if product_list.contains("product_D") {
    //print("商品有在裡面喔")
} else {
    //print("取代")
}
let indexA = product_list.index(of:"product_a")
product_list[indexA!] = "product_A"


var repeatedArray = Array(repeatElement("20", count: 10))

var ArrayNumOne = [1, 2, 3]
var ArrayNumTwo = [4, 5, 6]

var ArrayString1 = ["one", "two", "three"]
var ArrayString2 = ["four", "five", "six"]

var demoLoop = ["demo1", "demo3", "demo2", "demo3", "demo4", "demo3"];
//for dp in demoLoop.filter({i -> Bool in i < 40}) {
//    print(dp)
//}
var dpSum = 0;
var dpSum2 = 0

for dp in demoLoop {
    if(dp == "demo3") {
        dpSum += 1
    }
}

for (_, value) in demoLoop.enumerated() {
    if value == "demo3" {
        dpSum2 += 1
    }
}
// Literal establish
//print("dpSum: \(dpSum)")
//print("dpSum2: \(dpSum2)")
//print(demoLoop.filter {i-> Bool in i == "demo3"}.count)

// SET
var demoSet = Set<String>(["d1", "d2", "d3"])
var demoSet1: Set<Int> = [1,2,3,4]

// DICTIONARY

var animals = ["dog": 1, "cat": 5, "rabbit": 3]
animals.updateValue(2, forKey: "hipoo")
animals.removeValue(forKey: "dog")


var countrySections = [
    "America" : [1, 3, 4, 1],
    "Australia" : [4, 5, 1],
    "Japan" : [2, 3, 1],
    "Taiwan" : [4, 6, 7]
]
var secOne = 0

var secNumOne: [String: Int] = [:]
//var secNumOne = ["America": 0, "Australia": 0, "Japan": 0, "Taiwan": 0]
for sec in countrySections.keys {
    for num in countrySections[sec]! {
        if(secNumOne[sec] == nil) {
            secNumOne.updateValue(0, forKey: sec)
        }
        if num == 1 {
            secOne += 1
            secNumOne[sec]! += 1
        }
    }
}
print("Total: \(secOne)")
print(secNumOne)

var Fruits = [
    "Apple": 500,
    "Pineapple" : 300,
    "kiwi": 500,
    "pear": 150,
    "Banana": 150,
    "Watermelon": 250,
    "Strawberry": 500,
    "Blueberry": 300
]

var fruitArr = [String]()
for fruit in Fruits.keys {
    if Fruits[fruit] == 150 {
        fruitArr.append(fruit)
    }
}
print(fruitArr)

print(Fruits.filter { fr -> Bool in
    fr.value == 150
}.keys)


var animal = "dog"

switch animal {
    case "dog":
        print("dog")
    case "cat":
        print("cat")
    default:
        print("others")
}
enum Pet {
    case dog
    case cat
    case dokey
}

var myPet = Pet.dog

switch myPet {
    case .dog:
        print("Have a dog")
    case .cat:
        print("Have a cat")
    default:
        print("others")
}


for _ in 1...5 {
    print("HERE COMES THE DAMN PAIN")
}

var num = 0
while num < 10 {
    num += 1
    print(num)
}


var name = "kaneafaefaefefeffwf"
var aNum = 0;
for char in name {
 aNum += (char=="a" ? 1:0)
}
print(aNum)
print(name.filter {c -> Bool in c == "a" }.count)
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
let greeting = "Hello, World!!"
let commonIdx = greeting.index(of: ",") ?? greeting.endIndex
print(greeting[..<commonIdx])
let beginning = greeting[..<commonIdx]
type(of: beginning)
let beginning2 = greeting.prefix(upTo: commonIdx)
print(greeting.reversed())


let CityCounts = [
    "T": 20,
    "C": 30,
    "U": 13,
    "K": 13,
    "J": 20,
    "A": 15,
    "B": 13
]
var city13 = [String]();
for key in CityCounts.keys {
    if CityCounts[key] == 13 {
        city13.append(key);
    }
}
var cityThreeTeen = [String]();
for (countryName, cityNumber) in CityCounts {
    if cityNumber == 13 {
        cityThreeTeen.append(countryName);
    }
}

CityCounts.filter { (cityName, cityNum) -> Bool in cityNum == 13}.keys;
var shoppingCart = [
    "3C": ["Computer", "HeadPhone"],
    "Clothes": ["A", "B"]
]

if let oldValue = shoppingCart.updateValue(["Computer"], forKey: "3C") {
    print("old value: \(oldValue)")
}
*/

var valueOne: Int?
var valueTwo: Int? = 2
var valueThree: Int = 3

if valueOne != nil {
    var a = 1
    a = a + valueOne!
}

if let valueOne = valueOne {
    var a = 1
    a = a + valueOne
}
