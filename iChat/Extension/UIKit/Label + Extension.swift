//
//  Label + Extension.swift
//  iChat
//
//  Created by Максим on 14.09.2020.
//  Copyright © 2020 Novikov Maxim. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = UIFont.avenir20()) {
        self.init()
        
        self.text = text
        self.font = font 
    }
}
