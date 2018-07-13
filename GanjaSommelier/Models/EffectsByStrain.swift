//
//  EffectsByStrain.swift
//  GanjaSommelier
//
//  Created by Default on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

struct ResponseData: Decodable
{
    var effects: [Effect]
}

struct Effect: Decodable
{
    var effect: String
    var type: String
}

func decodeEffectsJSON() -> [Effect]?
{
    if let url = Bundle.main.url(forResource: "effects", withExtension: "json")
    {
        do
        {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let effectsData = try decoder.decode(ResponseData.self, from: data)
            return effectsData.effects
        }
        catch
        {
            print("error:\(error)")
        }
    }
    return nil
}



func sortEffects(effectType: String) -> [String]
{
    var allEffects = decodeEffectsJSON()
    var positiveEffectsArray = [String]()
    var negativeEffectsArray = [String]()
    var medicalArray = [String]()
    
    for i in 0...allEffects!.count
    {
        if allEffects![i].type == "positive"
        {
            positiveEffectsArray.append(allEffects![i].effect)
        }
        if allEffects![i].type == "negative"
        {
            negativeEffectsArray.append(allEffects![i].effect)
        }
        if allEffects![i].type == "medical"
        {
            medicalArray.append(allEffects![i].effect)
        }
    }
    var output = [String]()
    let switchVal = effectType
    switch switchVal
    {
    case "positive":
        output = positiveEffectsArray
    case "negative":
        output = negativeEffectsArray
    case "medicinal":
        output = medicalArray
    default:
        print("error: input can only be 'positive', 'negative' or 'medicinal'")
        break
    }
    return output
}
