//
//  Maravilha.swift
//  7Maravilhas
//
//  Created by Athena Fernandes Sarantôpoulos on 20/07/21.
//

import UIKit

class Maravilha {
    var name: String = ""
    var city: String
    var description: String
    var nameImage: String
    var image: UIImage
    
    init(name:String, city:String, description:String, nameImage:String) {
        self.name = name
        self.city = city
        self.description = description
        self.nameImage = nameImage
        image = UIImage(named: self.nameImage)!
    }
}
