//
//  Profile.swift
//  LoginApp2
//
//  Created by Elenka on 05.07.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let firstName: String
    let secondName: String
    let basicInfo: String
    let hobby: String
    let photo: String
}
