//: Playground - noun: a place where people can play

import UIKit

protocol Fighter {
    func fight()
}

class Person {
    var name: String = ""
}

extension Person: Fighter {
    func fight() {
        print("Está luchando")
    }

    
}

let me : Person = Person()
me.fight()