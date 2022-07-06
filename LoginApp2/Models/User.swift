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
    
    static func getUser() -> User {
        User(
            login: "qwe",
            password: "asd",
            person: Person(
                name: "Elena",
                basicInfo: "Живу в МСК.\nРаботаю в тестировании банковского ПО уже около 6 лет 😊.\nВот захотелось чего то большего 🤪",
                hobby: [
                    .dancing,
                    .drawing,
                    .yoga,
                    .travaling
                ],
                photo: "myPhoto"
            )
        )
    }
}

struct Person {
    let name: String
    let basicInfo: String
    let hobby: [Hobby]
    let photo: String
}

enum Hobby: String {
    case yoga = "🧘‍♀️ Каждое утро начинается с йоги"
    case dancing = "💃 Более пяти лет увлекаютсь сальсой"
    case drawing = "👩‍🎨 Люблю рисовать акварелью на iPad"
    case travaling = "🧳 Душа всегда просит путешествий :)"
}
