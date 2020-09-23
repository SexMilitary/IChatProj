//
//  UserError.swift
//  iChat
//
//  Created by Максим on 22.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
    case cannotGetUserInfo
    case cannotUnwrapToMUser
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Пользователь не выбрал фотографию.", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Невозможно загрузить фотографию о пользователе в Firebase.", comment: "")
        case .cannotUnwrapToMUser:
            return NSLocalizedString("Невозможно конвертировать в MUser из User.", comment: "")
        }
    }
}
