//
//  Profile.swift
//  LoginApp2
//
//  Created by Elenka on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    func getUser() -> [User] {
        [
            User(
                login: "qwe",
                password: "asd",
                person: Person(
                    name: "Elena",
                    basicInfo: "qweqweqwe qweqwe qweqwe qweqwe qweqwe qweqwe",
                    hobby: [
                        .dancing,
                        .drawing,
                        .yoga,
                        .travaling
                    ],
                    photo: "myPhoto"
                )
            )
        ]
    }
}

struct Person {
    let name: String
    let basicInfo: String
    let hobby: [Hobby]
    let photo: String
}

enum Hobby: Character {
    case yoga = "🧘‍♀️"
    case dancing = "💃"
    case drawing = "👩‍🎨"
    case travaling = "🧳"
    
    var definition: String {
        switch self {
        case .yoga:
            return "Почти каждое утро стараюсь делать набор утренних асан"
        case .dancing:
            return "Более пяти лет увлекаютсь сальсой"
        case .drawing:
            return "Люблю рисовать акварелью на iPad"
        case .travaling:
            return "Душа всегда просит путешествий :) "
        }
    }
}
