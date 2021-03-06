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

//use searchedStrains for our collection
var searchedStrains = ListOfStrains()

//.storedStrains["strainName"] = info (dictionary collection, with names as keys)
//.favouriteStrains = array of favourites
//.showInfo("strainName") = shows stored info, or creates new info and stores it. use for info from search results
//.addToFavs("strainName") -> adds to favouriteStrains
//.showStoredInfo("strainName") = only shows stored info. use for fetching favourite strains info

struct ListOfStrains
{
    //dictionary for searched strains with all their details (key: name, value: Info), array for favourites names
    
    var storedStrains = [String: StrainInformation]()
    var favouriteStrains = [String]()
    
    //shows up stored strain info, or creates a new profile if it's new

    mutating func showInfo(_ strainName: String) -> StrainInformation
    {
        if let alreadyStoredStrain = storedStrains[strainName]
        {
            return alreadyStoredStrain
            
        } else
        {
            return buildStrainDetails(strainName)
        }
    }
    
    //builds the new profile, returns info and stores to the list
    mutating func buildStrainDetails(_ strainName: String) -> StrainInformation
    {
        let flavoursBuild = getFlavors(strainName)! //fixed to get the flavours matching the searches
        let raceBuild = getDetails(race, 1)
        let matchWithBuild = getDetails(matchWith, 1)
        let medicinalUseBuild = getDetails(medicinal, 3)
        let positiveEffectsBuild = getDetails(positive, 4)
        let negativeEffectsBuild = getDetails(negative, 1)
        
        
        let builtStrainInformation = StrainInformation(name: strainName, flavours: flavoursBuild,race: raceBuild[0], matchWith: matchWithBuild[0], medicinalUse: medicinalUseBuild, positiveEffects: positiveEffectsBuild, negativeEffects: negativeEffectsBuild[0])
        
        storedStrains[builtStrainInformation.name] = builtStrainInformation
        
        return builtStrainInformation
    }
    
    
    //adding to favourites
    
    mutating func addToFavs(_ newFavouriteStrain: StrainInformation)
    {
        if favouriteStrains.contains(newFavouriteStrain.name)
        {
            print("strain already favourited")
            
        } else
        {
            favouriteStrains.append(newFavouriteStrain.name)
        }
    }
    
    
    //fetching favourites strain profile from storedStrains
    
    func showStoredInfo(_ strainToFetch: String) -> StrainInformation?
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
}

