//
//  AboutMe.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 03.04.2021.
//

struct Account {
    let login: String
    let password: String
    let person: Person
    
    static func getInformaton() -> Account {
        
        Account(
            login: "Marat",
            password: "qwerty",
            person: Person.getPerson()
        )
        
    }
}

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Marat", surname: "Shagiakhmetov")
    }
}
