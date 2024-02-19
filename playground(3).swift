import Foundation

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum CompassPoint: String {
    case north, south, east, west
}
enum Drink: String {
    case water,tea,soda,coffee,lemonade,juice,milk
}
enum Weekday: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

enum Gender {
    case male, female
}
enum AgeCategory {
    case young, adult, senior
}
enum Experience {
    case trainee,junior, middle, senior, lead
}
struct Employee {
    var name: String
    var gender: Gender
    var ageCategory: AgeCategory
    var experience: Experience
}
enum RainbowColor: Int {
    case red = 1,orange,yellow,green,blue,indigo,violet
}
enum Flower: String {
    case aster, azalea, camellia, camomile, carnation, chrysanthemum, narcissus, dahlia, dandelion, edelweiss, geranium, gladiolus, iris, lily, orchid, rose,tulip 
}
enum Color: String {
    case black, white, red, green, blue, yellow, pink, purple, brown, gray, orange
}
func printFruitColors() {
    let flowers = [Flower.aster, Flower.azalea, Flower.camellia, Flower.camomile, Flower.carnation, Flower.chrysanthemum, Flower.narcissus, Flower.dahlia, Flower.dandelion, Flower.edelweiss, Flower.geranium, Flower.gladiolus, Flower.iris, Flower.lily, Flower.orchid, Flower.rose, Flower.tulip].shuffled()
    let colors = [Color.black, Color.white, Color.red, Color.green, Color.blue, Color.yellow, Color.pink, Color.purple, Color.brown, Color.gray, Color.orange].shuffled()
    for i in 0..<min(flowers.count, colors.count) {
        print("\(flowers[i].rawValue) is \(colors[i].rawValue)")
    }
}

printFruitColors()

enum Score: String {
    case A, B, C, D, F
}
func printNumericScore(score: Score) {
    switch score {
    case .A:
        print("5")
    case .B:
        print("4")
    case .C:
        print("3")
    case .D:
        print("2")
    case .F:
        print("1")
    }
}

printNumericScore(score: Score.A)
printNumericScore(score: Score.B)
printNumericScore(score: Score.C)
printNumericScore(score: Score.D)
printNumericScore(score: Score.F)

enum CarBrand: String {
    case Audi,BMW, Ford, Honda, Hyundai, Kia,  Lada, Mercedes,  Nissan, Tesla, Toyota, Volkswagen, Volvo
}
class Garage {
    var cars: [CarBrand]
    init(cars: [CarBrand]) {
        self.cars = cars
    }
    func printCars() {
        for car in cars {
            print(car.rawValue)
        }
    }
}
let myGarage = Garage(cars: [CarBrand.Lada,CarBrand.Toyota])
myGarage.printCars()