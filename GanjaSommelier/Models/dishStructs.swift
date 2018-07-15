//
//  dishStructs.swift
//  GanjaSommelier
//
//  Created by Default on 15/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation
import UIKit

struct DishInformation
{
    var name: String
    var strain: String
    var notes: String
    var img: UIImage
    var rating: Int
}

var dishList = [String: DishInformation]()

//storing/adding

func storeNewDish(_ newDishName: DishInformation)
{
    if let _ = dishList[newDishName.name]
    {
        print("dish has already been added, or it's name has already been used")
    } else {
        dishList[newDishName.name] = newDishName
    }
}
//do I need a function to create a dish object?

//editing a dish


