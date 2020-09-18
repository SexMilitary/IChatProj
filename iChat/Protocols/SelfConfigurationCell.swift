//
//  SelfConfigurationCell.swift
//  iChat
//
//  Created by Максим on 18.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    static var reudeID: String { get }
    func configure(with value: MChat)
}
