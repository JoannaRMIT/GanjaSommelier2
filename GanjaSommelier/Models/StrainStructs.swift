//
//  StrainStructs.swift
//  GanjaSommelier
//
//  Created by Default on 14/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

struct StrainDetail
{
    var name: String
    var race: String
    var matchWith: String
    var medicinalUse: [String]
    var positiveEffects: [String]
    var negativeEffects: [String]
}

struct StrainDetailsList
{
    var searchedStrainsList:[StrainDetail]
    init()
    {
        searchedStrainsList = [StrainDetail]()
    }
    
    mutating func addStrainToList(_ strainName: StrainDetail)
    {
        searchedStrainsList.append(strainName)
    }
}

struct FavouriteStrainsList
{
    var favouriteStrains: [StrainDetail]
    init()
    {
        favouriteStrains = [StrainDetail]()
    }
    
    mutating func addStrainToFavourites(_ strainName: StrainDetail)
    {
        favouriteStrains.append(strainName)
    }
}
