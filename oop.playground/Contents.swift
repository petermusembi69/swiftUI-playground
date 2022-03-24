import UIKit

//let keyword is used as a constant
let pi = 3.14

class Microphone {
    var color: String = "Blue"
    var type: String = "Condensed"
    var brandName: String = "Yeti"
    
    //Designated constructor
    init() {}
    
    // Convenience constructor
    convenience init(micColor: String, micType: String, micBrandName: String) {
        self.init()
        color = micColor
        type = micType
        brandName = micBrandName
    }
    func turnOn() {
        print("\(self.brandName) is on")
    }
    
    func makeSound() {
        print("Making sound...")
    }
}
	
let justMic = Microphone()
justMic.turnOn()

let blueYeti = Microphone(micColor: "Gray",micType: "Condensed", micBrandName: "Blue Yetti")
blueYeti.turnOn()

//Inheritance
class Lapel: Microphone {
    func microphoneSound() {
        // accessing properties from our super class
        super.makeSound()
    }
    override func makeSound() {
        print("Making lapel sound...")
    }
    
}

let lapel = Lapel()

lapel.turnOn()
lapel.makeSound()
lapel.microphoneSound()

//Struct
struct Person {
    var name: String
    var age: Int
}

let james = Person(name: "James", age: 90)

print(james.name)




