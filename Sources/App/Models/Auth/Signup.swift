//
//  Login.swift
//  
//
//  Created by Yusuf Özgül on 6.02.2021.
//

import Vapor

struct Signup: Content {
    let mail: String
    let password: String
    let name: String
    let surname: String
    let phone: String
    let districtID: String
}

extension Signup: Validatable {
  static func validations(_ validations: inout Validations) {
    validations.add("mail", as: String.self, is: !.empty)
    validations.add("districtID", as: String.self, is: !.empty)
    validations.add("password", as: String.self, is: .count(6...))
    validations.add("name", as: String.self, is: .count(2...))
    validations.add("surname", as: String.self, is: .count(2...))
    validations.add("phone", as: String.self, is: .count(11...))
  }
}
