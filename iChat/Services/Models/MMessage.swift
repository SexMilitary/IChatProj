//
//  MMessage.swift
//  iChat
//
//  Created by Максим on 25.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import UIKit
import FirebaseFirestore

struct MMessage: Hashable {
   
    let content: String
    var senderId: String
    var senderUsername: String
    var sentDate: Date
    let id: String?

    
    init(user: MUser, content: String) {
        self.content = content
        senderId = user.id
        senderUsername = user.username
        sentDate = Date()
        id = nil
    }
    
    var representation: [String: Any] {
        let rep: [String: Any] = [
            "created": sentDate,
            "senderID": senderId,
            "senderName": senderUsername,
            "content": content
        ]
        return rep
    }

}

