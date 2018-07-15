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

//use storedDishes for our collection
var storedDishes = ListOfDishes()

//.list["dishName"] returns DishInformation in list dictionary
//.getDish("dishName") same but checks first i.e. optional
//.createDish(add all the info) to store to list
//.editDish(oldDishName, all the new info) delete oldDish, store the new one

struct ListOfDishes
{
    //dictionary for the list
    var list = [String: DishInformation]()
    
    //create
    mutating func createDish(name: String, strain: String, notes: String, img: UIImage, rating: Int)
    {
        let newDish: DishInformation = DishInformation(name: name, strain: strain, notes: notes, img: img, rating: rating)
        if let _ = list[newDish.name]
        {
            print("dish already stored")
            
        } else {
            
            list[newDish.name] = newDish
            
        }
    }
    
    //fetch
    func getDish(_ dishName: String) -> DishInformation?
    {
        if let fetchDish = list[dishName]
        {
            return fetchDish
            
        } else {
            
            print("dish not found")
            return nil
            
        }
    }
    
    //edit
    mutating func editDish(_ dishName: String, newName: String, newStrain: String, newNotes: String, newImg: UIImage, newRating: Int)
    {
        if let _ = list[dishName]
        {
            let editedDish = DishInformation(name: newName, strain: newStrain, notes: newNotes, img: newImg, rating: newRating)
            list[dishName] = nil //delete the old dish before storing the new version
            list[editedDish.name] = editedDish
        } else {
            print("dish not found")
        }
        
    }

}
