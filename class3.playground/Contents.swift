import UIKit

//struct Coordinate {
//    var axisX: Double
//    var axisY: Double
//}
//var coor1 = Coordinate(axisX: 20, axisY: 20)
//var coor2 = Coordinate(axisX: 22, axisY: 42)
////var coordinates: [Coordinate] = [Coordinate]()
////coordinates.append(coor1)
////coordinates.append(coor2)
//
//var coordinates: [Coordinate] = [coor1, coor2]

//class People {
//    var height: Double = 0
//    var weight: Double = 0
//    var bmi:Double {
//        return height / weight
//    }
//    init(_ height: Double, _ weight: Double) {
//        self.height = height
//        self.weight = weight
//    }
//}
//
//var person1: People = People(173, 66)
//person1.bmi

class Product {
    var title: String
    var price: Double
    var descript: String
    init(title: String, price: Double, descript: String) {
        self.title =  title
        self.price = price
        self.descript = descript
    }
}

class ProductMachine {
    var products: [Product] = [
        Product(title: "prd1", price: 40, descript: "content1"),
        Product(title: "prd2", price: 20, descript: "content2"),
        Product(title: "prd3", price: 50, descript: "content3"),
        Product(title: "prd4", price: 65, descript: "content4"),
        Product(title: "prd5", price: 37, descript: "content5"),
        Product(title: "prd6", price: 60, descript: "content6"),
        Product(title: "prd7", price: 35, descript: "content7"),
        Product(title: "prd8", price: 53, descript: "content8"),
        Product(title: "prd9", price: 57, descript: "content9"),
        Product(title: "prd10", price: 24, descript: "content10")
    ]
    func getRandomProduct() -> Product {
        //let random:Int = Int.random(in: 0..<products.count)
        //return products[random];
        return products[Int(arc4random()) % 10];
        
    }
    func getMaxProduct() -> Product {
        return products.sorted { (p1, p2)-> Bool in return {p1.price > p2.price}() }[0]
    }
    func getMinProduct() -> Product {
        return products.sorted { (p1, p2)-> Bool in return {p1.price < p2.price}() }[0]
    }
}

var myProductMachine = ProductMachine()
for _ in 1...3 {
    print("\(myProductMachine.getRandomProduct().title) : \(myProductMachine.getRandomProduct().price)")
}

print("Highest price product: \(myProductMachine.getMaxProduct().title) which is \(myProductMachine.getMaxProduct().price)");
print("Lowest price product: \(myProductMachine.getMinProduct().title) which is \(myProductMachine.getMinProduct().price)");
