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

func searchEffectsByStrain() -> [Effect]?
{
    if let url = Bundle.main.url(forResource: "effects", withExtension: "json")
    {
        do
        {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let effectsData = try decoder.decode(ResponseData.self, from: data)
            let decodedEffects = effectsData.effects
            
            
            
            
        }
        catch
        {
            print("error:\(error)")
        }
    }
    return nil
}
