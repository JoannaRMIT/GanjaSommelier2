//
//  StrainByFlavor.swift
//  GanjaSommelier
//
//  Created by Default on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

struct ResponseData: Decodable
{
    var strain: [Strain]
}

struct Strain: Decodable
{
    var id: Int
    var name: String
    var race: String
    var flavor: String
}

func searchStrainByFlavor(_ flavor: String) -> [Strain]?
{
    if let url = Bundle.main.url(forResource: flavor, withExtension: "json")
    {
        do
        {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let strainData = try decoder.decode(ResponseData.self, from: data)
            return strainData.strain
        }
        catch
        {
            print("error:\(error)")
        }
    }
    return nil
}
