import UIKit

var text = "Pedro Henrique"
var intNumber = 10
var parceNumber = 1.2
var floatNumber: Double = 4.5
var secondFloatNumber: Float = 4.3

var boolean = true
boolean = false

let bool = true

var vazio: [Int] = []

var ages = [12,23,32,43,54]

vazio.count
ages.count

vazio.first
ages.first
ages.last
vazio.last

ages[1]

ages.append(10)
ages.insert(12, at: 3)
print(ages)
ages.sort()
print(ages)
ages.reverse()
print(ages)
ages.shuffle()
print(ages)

var numbers = [1,2,2,3,4,5,5,6,6]

var setNumbers =  Set(numbers)
print(setNumbers.contains(2))
print(setNumbers.contains(22))

var peoples: [String:Int] = ["Pedro":18, "Bianca":19, "Rafaella":21]
peoples["Romulo"] = 18
print(peoples["Romulo"]!)
print(peoples)


func sayHello(){
    print("Hello World")
}
sayHello()
func sayTheName(name: String){
    print("Ola \(name)")
}

sayTheName(name: "Pedro Morais")

func add(numberOne: Int, numberTwo:Int) -> Int{
    return numberOne + numberTwo
}


//add(numberOne: 3, numberTwo: 5)
//
//let result: () = add(numberOne: 3, numberTwo: 5)

let result = add(numberOne: 2, numberTwo: 3)

print("O resultado é \(result)")

var isChecked = true

if isChecked == true{
    print("checked")
}else{
    print("no")
}


var nota = 18

if nota < 10{
    print("reprovado")
}else if nota == 10{
    print("aprovado")
} else if nota < 15{
    print("aprovado com nota boa")
}else{
    print("aprovado com boa nota")
}


let code = 4
switch code{
case 1...10:print("1 a 10")
case 20...30:print("20 a 30")
case 30...40:print("30 a 40")
case 40...50:print("40 a 50")
default:print("sei la")
}



var names = ["Pedro", "Gustavo", "Larissa", "Camila"]

for nome in names where nome == "Larissa" {
    print(nome)
}
var randomNumbers: [Int] = []
for i in 0...10{
    print(i)
}
for i in 0...10{
    let newNumber = Int.random(in: 0...1000)
    randomNumbers.append(newNumber)
}
for i in randomNumbers{
    print(i)
}
enum Course{
    case WebDeveloper
    case MobileDeveloper
    case LowCodeDeveloper
}

func getCourseDuration(de course:Course){
    if course == .WebDeveloper{
        print(2000)
    } else if course == .MobileDeveloper{
        print(3000)
    } else if course == .LowCodeDeveloper{
        print(100)
    }else{
        print(0)
    }
    
}

getCourseDuration(de: .WebDeveloper)

var arrayOfAges:[Int] = [10]
arrayOfAges.sort()

if let maisVelho = arrayOfAges.last {
    print("O mais velho é \(maisVelho)")
}else{
    print("nao foram definida idades")
}
let maisVelho2 = arrayOfAges.last ?? 999

func getOlder(){
    guard let maisVelho3 = arrayOfAges.last else {return}
    print("O mais velhoo é \(maisVelho3)")

}
let maisVelho4 = arrayOfAges.last!
getOlder()

class Peoples{
    var name:String?
    var email:String?
    var age: Int?
    init(){}
    init(name: String, email: String, age: Int) {
        self.name = name
        self.email = email
        self.age = age
    }
    func writeName(){
        if let name = self.name{
            print(name)
        }
    }
}
let p1 = Peoples(name: "pedro", email: "pedro@email.com", age: 18)
let p2 = Peoples()
p1.name = "Marcos"
print(p1.name!)

p1.writeName()
class Student: Peoples{
    var number: Int?
    override func writeName() {
        print("\(name) - \(number)")
    }
}

func plus<T: Numeric>(_ a: T, _ b: T) -> T {
    return a + b
}

func minus<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}

func multi<T: Numeric>(_ a: T, _ b: T) -> T {
    return a * b
}





