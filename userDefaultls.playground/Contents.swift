import UIKit

//There two types of data
//1.Key value pair persistent data know as UserDefaults
// Not convinient for massive amount of data as it slows down app performance
//2.Complex data know as Core data

let defaults = UserDefaults.standard

let dogAge = defaults.integer(forKey: "dog") // return 0 if non-existent

let cat = defaults.string(forKey: "cat") // returns nil if non-existent

defaults.set("James Bond", forKey: "dog")
defaults.set(3, forKey: "cat")

let dogName = defaults.string(forKey: "dog")
let catLife = defaults.integer(forKey: "cat")

struct Person : Decodable, Encodable {
    var id = UUID()
    var name: String
    var age: Int
    var isOld: Bool
}

let person = Person(name:"James", age: 50, isOld: true)

let encoder = JSONEncoder()
let decoder = JSONDecoder()

if let encoded = try? encoder.encode(person) {
    defaults.set(encoded,forKey: "person")
}

if let savedPerson = defaults.object(forKey: "person") as? Data {
    if let loadedPerson = try? decoder.decode(Person.self, from: savedPerson) {
        print(loadedPerson.name)
        print(loadedPerson.age)
    }
}
