//: Playground - noun: a place where people can play

import Foundation

class Player {
    var name: String
    var hitPoints: Int
    
    init(name: String) {
        self.name = name
        self.hitPoints = 0
    }
    
    func adventure() {
        print("\(name) goes adventuring!")
    }
}

class Fighter: Player {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 8
    }
    
    func melee() {
        print("Attacks with Sword!")
    }
}

// Spell casters cast spells

class Spellcaster: Player {
    func castSpell() {
        print("Do magic stuff")
    }
}

class Wizard: Spellcaster {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 4
    }
}

class Priest: Spellcaster {
    
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 6
    }
    
}



// Our game would be more fun with an Elf!
// Elf can both melee() and castSpell()

class Elf: Player {
    override init(name: String) {
        super.init(name: name)
        
        hitPoints = 6
    }
    
    // Needs to cast spells and melee...
}

// Elves cast spells and use swords?
// We can only inherit from one super class Spellcaster or Fighter, not both.

// The problems:

// You need to move castSpell and melee methods up to Player.
//      In this case we end up with classes that have more functionality than they need.
//      Fighters cast Spells and Wizards melee.

// Or, we make another subclass that casts spells and melees. 
//      In this case we duplicate functionality, more than one class casts spells
//      and melees.

// This is where inheritance breaks down. Moving all methods up the chain concentrates
// functionality in base classes. Making more sub classes often has us duplicating
// functionality.


// Wizard adds a new method
var mephisto = Wizard(name: "Mephisto")
mephisto.castSpell()

// Priest duplicates functionality
var clancy = Priest(name: "Clancy")
clancy.castSpell()

// Fighter
var frank = Fighter(name: "Frank")
frank.melee()

var elrond = Elf(name: "Elrond")
// ????


// - Challenge: 

// Define two protocols Casts, and Fights. Casts should define the 
// castSpell() method. And, Fights should define the melee() method. 

// A protocol looks liek this: 

protocol Casts {
  func castSpell()
}

// Defining a protocol is like defining a class with the difference that 
// you do not define the code for a method. The protocol above is 
// complete! castSpell() is a method that takes new parameters and
// returns nothing. 

// Since the protocol doesn't define any code, a class that adopts
// the protocol must implement the method itself! 

// https://docs.swift.org/swift-book/LanguageGuide/Protocols.html

// - Challenge: 

// Figher should inherit from Player, and adopt the Fights protocol. 
// Wizard should inherit from Player, and adopt the Casts protocol. 
// Elf should inherit from Player, and adopt both Casts and Fights. 

// - Challenge: 

// Fighter, Wizard, Priest, and Elf will need to implement the methods declared in the 
// protocols they adopt. 







