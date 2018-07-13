//
//  FlavorsByStrain.swift
//  GanjaSommelier
//
//  Created by Default on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation
// this API request returns a simple array from the strain id, so no JSON deserializing for the full version

var flavors = ["Earthy","Chemical","Pine","Spicy/Herbal","Pungent","Pepper","Flowery","Citrus","Orange","Sweet","Skunk","Grape","Minty","Woody","Cheese","Diesel","Tropical","Grapefruit","Nutty","Lemon","Berry","Blueberry","Ammonia","Apple","Rose","Butter","Honey","Tea","Lime","Lavender","Strawberry","Mint","Chestnut","Tree Fruit","Pear","Apricot","Peach","Blue Cheese","Menthol","Coffee","Tar","Mango","Pineapple","Sage","Vanilla","Plum","Tobacco","Violet"]


func pickStrainFlavors() -> [Any]
{
    var pickedFlavors = [String]()
    var rand1: Int
    var rand2: Int
    var rand3: Int
    rand1 = Int(arc4random_uniform(UInt32(flavors.count)))
    repeat
    {
        rand2 = Int(arc4random_uniform(UInt32(flavors.count)))
    }
        while rand2 == rand1
    
    repeat
    {
        rand3 = Int(arc4random_uniform(UInt32(flavors.count)))
    }
        while (rand3 == rand1) || (rand3 == rand2)
    
    pickedFlavors = [flavors[rand1], flavors[rand2], flavors[rand3]]
    return pickedFlavors
    
}
