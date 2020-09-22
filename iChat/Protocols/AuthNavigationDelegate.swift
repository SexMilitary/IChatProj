//
//  AuthNavigationDelegate.swift
//  iChat
//
//  Created by Максим on 22.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import Foundation

protocol AuthNavigationDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
