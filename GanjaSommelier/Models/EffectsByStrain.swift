//
//  EffectsByStrain.swift
//  GanjaSommelier
//
//  Created by Default on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

//hardcoded array for the mockup, probably should have made a func that could be used for flavors as well

var positive = ["Relaxed", "Hungry", "Euphoric", "Happy", "Creative", "Energetic", "Talkative", "Uplifted", "Tingly", "Sleepy", "Focused", "Giggly", "Aroused"]

var negative = ["Dizzy", "Dry Mouth", "Paranoid", "Dry Eyes", "Anxious"]

var medical = ["Depression", "Insomnia", "Pain", "Stress", "Cramps", "Lack of Appetite", "Nausea", "Headaches", "Fatigue", "Eye Pressure", "Inflammation", "Spasticity", "Seizures", "Muscle Spasms"]

func getEffects(_ type: [String], _ number: Int) -> [String]
{
    
    var rand1: Int
    var rand2: Int
    var rand3: Int
    let amount = type.count
    rand1 = Int(arc4random_uniform(UInt32(amount)))
    repeat
    {
        rand2 = Int(arc4random_uniform(UInt32(amount)))
    }
        while rand2 == rand1
    
    repeat
    {
        rand3 = Int(arc4random_uniform(UInt32(amount)))
    }
        while (rand3 == rand1) || (rand3 == rand2)
    
    var rands = [rand1, rand2, rand3]
    var effectsReturn = [String]()
    for i in 0..<number
    {
        effectsReturn.append(type[rands[i]])
    }
    return effectsReturn
    
}
