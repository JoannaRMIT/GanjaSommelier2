//
//  EffectsByStrain.swift
//  GanjaSommelier
//
//  Created by Default on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

//hardcoded array for the mockup

var positive = ["Relaxed", "Hungry", "Euphoric", "Happy", "Creative", "Energetic", "Talkative", "Uplifted", "Tingly", "Sleepy", "Focused", "Giggly", "Aroused"]

var negative = ["Dizzy", "Dry Mouth", "Paranoid", "Dry Eyes", "Anxious"]

var medicinal = ["Depression", "Insomnia", "Pain", "Stress", "Cramps", "Lack of Appetite", "Nausea", "Headaches", "Fatigue", "Eye Pressure", "Inflammation", "Spasticity", "Seizures", "Muscle Spasms"]

var flavors = ["Earthy","Chemical","Pine","Spicy/Herbal","Pungent","Pepper","Flowery","Citrus","Orange","Sweet","Skunk","Grape","Minty","Woody","Cheese","Diesel","Tropical","Grapefruit","Nutty","Lemon","Berry","Blueberry","Ammonia","Apple","Rose","Butter","Honey","Tea","Lime","Lavender","Strawberry","Mint","Chestnut","Tree Fruit","Pear","Apricot","Peach","Blue Cheese","Menthol","Coffee","Tar","Mango","Pineapple","Sage","Vanilla","Plum","Tobacco","Violet"]

var race = ["Indica", "Sativa", "Hybrid"]

var matchWith = ["Rice", "Chicken", "Noodles", "Soup", "Chilli", "Salad", "Spaghetti", "Pasta", "Pie", "Pizza", "Turkey", "Fish", "Teriyaki", "Pancakes", "Eggs", "Brownies", "Cake", "Ice cream", "Cookies", "Truffles", "Cheesecake", "Chocolate", "Peanut Butter", "Almond", "Salted Caramel", "Strawberries", "Pumpkin", "Butterscotch", "Lemon", "Mousse", "Apple", "Orange", "Banana", "Potato", "Soy", "Vanilla", "Ham", "Cinnamon", "Dairy", "Whiskey"]

func getDetails(_ type: [String], _ number: Int) -> [String]
{
    var rands = [Int]()
    var rand: Int
    let amount = type.count
    for _ in 0..<number
    {
        repeat
        {
            rand = Int(arc4random_uniform(UInt32(amount)))
        }
            while rands.contains(rand)
        rands.append(rand)
    }
    
    var effectsReturn = [String]()
    for i in 0..<number
    {
        effectsReturn.append(type[rands[i]])
    }
    return effectsReturn
    
}

//getting the real flavours

func appendFlavors(_ strainName: String) -> [String]?
{
    var flavoursBuild = [String]()
    let hardFlavours: [String] = ["Pine", "Earthy", "Chemical"]
    
    for flav in hardFlavours
    {
        if (searchStrainByFlavor(flav)?.contains(where: {$0.name == strainName}))!
        {
            flavoursBuild.append(flav)
        }
    }

    return flavoursBuild
}
