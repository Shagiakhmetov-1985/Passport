//
//  AboutMe.swift
//  Passport
//
//  Created by Marat Shagiakhmetov on 03.04.2021.
//

struct Person {
    let name: String
    let firstName: String
    let yearOfBirth: Int
    let account: [Account]
    let aboutMe: [AdditionalInfomation]
    
    static func getInformaton() -> [Person] {
        [
            Person(name: "Marat",
                   firstName: "Shagiakhmetov",
                   yearOfBirth: 1985,
                   account: [
                   Account(login: "Marat", password: "qwerty"),
                   ],
                   aboutMe: [
                   AdditionalInfomation(hometown: "Москва",
    education: "Высшее",
    familyStatus: "Женат",
    favoriteLessons: "алгебра, геометрия, спорт, информационные технологии, путешествия",
    favoriteSportLessons: "легкая атлетика, волейбол, тренажерный зал",
    favoriteWriter: "Жюль Верн",
    favoriteBooks: "20 тысяч лье под водой, Дети капитана Гранта, Таинственный остров, Вокруг света за 80 дней")
                   ])
        ]
    }
}

struct Account {
    let login: String
    let password: String
}

struct AdditionalInfomation {
    let hometown: String
    let education: String
    let familyStatus: String
    let favoriteLessons: String
    let favoriteSportLessons: String
    let favoriteWriter: String
    let favoriteBooks: String
}
