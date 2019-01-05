import UIKit

/*var UrAge: Int? = 3

//UrAge! // unwrap
class Foo {
}
var any: Any
any = 12
any = 3.14
any = "hello"
any = Foo()

var anyObject: AnyObject
anyObject = Foo()

var foo: Any = "hello"
type(of: foo)

if foo is String {
    print("foo is a string")
}

var anyValue: Any = "123"
var castStr = anyValue as! String

castStr + "Hello"

var str: Any? = "hello"
var str1 = str as! String?
var str2 = str as! String!
var str3 = str as! String


func hi() {
   print("HI!")
}

func hi_2(name: String) {
    print("HI! \(name)")
}

func hi_3(_ name: String) {
    print("HI! \(name)")
}

func hi_4(youName name: String) {
    print("HI! \(name)")
}

func hi_5(_ name: String...) {
    type(of: name)
    print("HELLO \(name)")
}

hi()
hi_2(name: "kane")
hi_3("brock")
hi_4(youName: "chunyi")
hi_5("a1", "a2", "a3")


func compareValue(_ value1: Int, _ value2: Int) -> Int {
    if value1 >= value2 {
        return value1
    }
    return value2
}

let CityCounts = [
    "T": 20,
    "C": 30,
    "U": 13,
    "K": 13,
    "J": 20,
    "A": 15,
    "B": 13
]

func findCityNumber(_ cityCount: Int) -> [String] {
    //return (CityCounts.filter {(cityName, cityNum) -> Bool in cityNum == cityCount}.keys ?? [])
    
    var carr = [String]()
    for (cname, cnum) in CityCounts {
        if(cnum == cityCount) {
            carr.append(cname)
        }
    }
    //carr = CityCounts.filter {(cityName, cityNum) -> Bool in cityNum == cityCount}.keys
    return carr
}
//findCityNumber(13)

func sumUp(_ iptArr: Array<Int>, _ sqt: Int) -> Int {
    var sumNum:Int = 0
    
    //for i in iptArr {
        //sumNum += pow(Double(i), Double(sqt))
    //}
     //return Int(sumNum)

    for i in iptArr {
        var local = i
        for _ in 2...sqt {
            local *= i
        }
        sumNum += local
    }
    return sumNum
}
//sumUp( [1,2,3,1], 3)

func sumWithfunc (_ ipt1:Int, _ ipt2: Int, _ calc:(Double)-> Double) -> Double{
    var result:Double = Double(ipt1)
    for _ in 1...ipt2 {
        result = calc(result)
    }
    return result
}

func twice(_ ipt: Double) -> Double {
    return ipt * 2
}

func sqrt(_ ipt: Double) -> Double {
    return ipt * ipt
}

print(sumWithfunc(2, 2, {num -> Double in num * 2}))
print(sumWithfunc(2, 3, {num -> Double in num * num}))

var demoIntArr: [Int] = [1,2,3,4,5]

// Closure {()->}

let names = ["John", "Samuel", "Annie", "Jennifer"];
//names.sorted
print(names.filter { name -> Bool in !name.hasPrefix("J")});
*/

struct AddressInfo {
    var country: String = "Taiwan"
    var city: String = "Taipei"
    var district: String = "ChongSan"
}

//let addrinfo = AddressInfo()
//var addrinfo2 = addrinfo
//addrinfo2.country = "New Zealand"
//let addrinfo3 = AddressInfo(country: "Chinese", city: "c1", district: "d1")
//print(addrinfo.country)
//print(addrinfo2.country)
//print(addrinfo3.country)

//class Friend {
//    var age: Int = 18
//    var sign: String = "gold cow"
//    var location: AddressInfo = AddressInfo()
//    var money: Int = 2000
//
//    func movePlace(place: AddressInfo) {
//        location = place
//    }
//
//    func updateMoney(coin: Int) {
//    money = money + coin;
//    }
//}
//
//let friend1 = Friend();
//let firend2 = Friend();
//
//print(friend1.money);
//friend1.updateMoney(coin: 100)
//
class Product {
    var price: Int = 100
    var discount: Double = 1.0 {
        didSet{
            if discount > 1.0 {
                discount = 1.0
            } else if discount < 0 {
                discount = 0.0
            }
        }
//        willSet {
//            if newValue > 1.0 {
//                newValue = 1.0
//            } else if newValue < 0 {
//                newValue = 0.0
//            }
//        }
        
    }
    var address: AddressInfo = AddressInfo()
}
//
//var product_1 = Product()
//var product_2 = Product()
//var product_3 = Product()
//var product_4 = Product()
//
//product_1.price = 120;product_1.discount = 0.8;
//product_2.price = 250;product_2.discount = 0.2;
//product_3.price = 130;product_3.discount = 0.8;
//product_4.price = 240;product_4.discount = 0.1;
//
//var products = [product_1, product_2, product_3, product_4]
//
//var newPrducts = (products.sorted { (prd1, prd2) -> Bool in return Double(prd1.price) * prd1.discount > Double(prd2.price) * prd2.discount })
//
//for prd in newPrducts {
//    print("productPrice: \(prd.price), productDiscount: \(prd.discount) , realPrice: \(Double(prd.price) * prd.discount)");
//}

// Type Property: Global Static

class ProductGlobal {
    static let brandingName = "213"
}

struct Point {
    var location: CGPoint = CGPoint(x: 0, y: 0)
}

class Rect_4 {
    var width: Int = 10
    var height: Int = 10
    lazy var position = Point()
    init() {
        print("Rect.init()")
    }
}

class People {
    var name: String = "unKnown"
    var age: Int?
    var sign: String?
    var money: Int?
}

class Friend: People {
    var relation: String = "co-worker"
    init(_ rel:String) {
        relation = rel
    }
}

class Pet {
    var age: Int
    init(age: Int) {
        self.age = age
    }
}

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit{
        print("\(name) is bening deinitialized");
    }
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    weak var tenant: Person?
    deinit{
        print("Apartment \(unit) is being deinitialized ");
    }
    
    
}

var john:Person?
var unit4A: Apartment?

john = Person(name: "John Marston")
unit4A = Apartment(unit: "4A")


john?.apartment = unit4A
unit4A?.tenant = john

//unit4A = nil
//john = nil


//extension Double {
//    var km: Double { return self * 1_000.0}
//    var m: Double { return self}
//    var cm: Double { return self / 100.0}
//}
//
//let oneInch = 25.4.km

//extension Int {
//    func repeations (task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//
//5.repeations(task: {print("CALL")})

@objc protocol FullyNamed {
    var fullName: String { get }
}

class Children: FullyNamed {
    var fullName: String {
        return "SOME NAME"
    }
}
