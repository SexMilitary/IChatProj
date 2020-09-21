//
//  Validators.swift
//  iChat
//
//  Created by Максим on 21.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import Foundation

class Validators {
    
    static func isFilled(email: String?, password: String?, confirmPassword: String?) -> Bool {
        guard let password = password,
              let email = email,
              let confirmPassword = confirmPassword,
              password != "",
              email != "",
              confirmPassword != "" else {
            return false
        }
        return true
        print("test 1")
    }
    
    static func isSimpleEmail(_ email: String) -> Bool {
        let emailRegEx = "^.+@.+\\..{2,}$"
        return check(text: email, regEx: emailRegEx)
    }
    
    private static func check(text: String, regEx: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)
        return predicate.evaluate(with: text)
    }
}
