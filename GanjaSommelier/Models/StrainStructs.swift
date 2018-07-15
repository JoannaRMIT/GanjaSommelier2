//
//  StrainStructs.swift
//  GanjaSommelier
//
//  Created by Default on 14/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import Foundation

struct StrainInformation
{
    var name: String
    var flavours: [String]
    var race: String
    var matchWith: String
    var medicinalUse: [String]
    var positiveEffects: [String]
    var negativeEffects: String
}

//dictionary for searched strains with all their details, array for favourites names
//easy lookup for details using just names

var storedStrains = [String: StrainInformation]()
var favouriteStrains = [String]()

//building the StrainInformation
func buildStrainDetails(_ strainName: String) -> StrainInformation
{
    //let flavoursBuild = getDetails(flavors, 3)
    //fixed to get the flavours matching the searches
    let flavoursBuild = appendFlavors(strainName)!
    let raceBuild = getDetails(race, 1)
    let matchWithBuild = getDetails(matchWith, 1)
    let medicinalUseBuild = getDetails(medicinal, 3)
    let positiveEffectsBuild = getDetails(positive, 4)
    let negativeEffectsBuild = getDetails(negative, 1)
    
    
    let builtStrainInformation = StrainInformation(name: strainName, flavours: flavoursBuild,race: raceBuild[0], matchWith: matchWithBuild[0], medicinalUse: medicinalUseBuild, positiveEffects: positiveEffectsBuild, negativeEffects: negativeEffectsBuild[0])
    
    return builtStrainInformation
}

//storing Strain Information, checking beforehand if it's already been stored

func storeNewStrain(_ strainToStore: StrainInformation)
{
    if let _ = storedStrains[strainToStore.name]
    {
        print("strains information is already stored")
    } else
    {
        storedStrains[strainToStore.name] = strainToStore
    }
}
//adding to favourites

func addToFavs(_ newFavouriteStrain: StrainInformation)
{
    if favouriteStrains.contains(newFavouriteStrain.name)
    {
        print("strain already favourited")
    } else
    {
        favouriteStrains.append(newFavouriteStrain.name)
    }
}


//fetching Strain Information, unless strain not stored yet

func getStoredStrain(_ strainToFetch: String) -> StrainInformation?
{
    if let getStrain = storedStrains[strainToFetch]
    {
        return getStrain
    } else
    {
        print("strain not found")
        return nil
    }
}
