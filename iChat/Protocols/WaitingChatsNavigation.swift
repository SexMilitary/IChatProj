//
//  WaitingChatsNavigation.swift
//  iChat
//
//  Created by Максим on 27.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import Foundation
protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func chatToActive(chat: MChat)
}
