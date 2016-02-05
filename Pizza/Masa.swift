//
//  Masa.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/2/16.
//  Copyright © 2016 YE. All rights reserved.

import UIKit

class Masa {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?

    // MARK: Initialization
    
    init?(name: String, photo: UIImage?) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        
    }

}