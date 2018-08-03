//
//  AddDishController.swift
//  GanjaSommelier
//
//  Created by Default on 19/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import UIKit
import SQLite3

class AddDishController: UIViewController {
    
//add bool from segue whether add or edit. if edit, send select query as struct
//if editDishSegue{
//    addDishValues = prepared: DishInformation
//    load values, but store original name in a tempVar
//    } else {
//        clear all values, init rating to 0
//    }
    
    @IBOutlet weak var addDishName: UITextField!
    
    var addDishRating: Int = 0
    
    @IBAction func star1(_ sender: UIButton) {
        addDishRating = 1
    }
    @IBAction func star2(_ sender: UIButton) {
        addDishRating = 2
    }
    @IBAction func star3(_ sender: UIButton) {
        addDishRating = 3
    }
    @IBAction func star4(_ sender: UIButton) {
        addDishRating = 4
    }
    @IBAction func star5(_ sender: UIButton) {
        addDishRating = 5
    }
    @IBOutlet weak var addDishStrain: UILabel!
    @IBOutlet weak var addDishNotes: UITextView!
    
    @IBAction func addDishSave(_ sender: UIButton) {
        //if addDishName is empty or exists in db {pop up error and return;}
        var dishNameEmpty = false
        var dishNameExists = false
        if addDishName == nil {
            //pop up error
            print("dish name empty")
            dishNameEmpty = true
        }
        // if editDishSegue = true
        // delete current dish row, using tempVar from editDishSeque
        let db = ganjaDB()
        let doesDishNameExist = "SELECT EXISTS(SELECT 1 FROM StoredDishes WHERE name = \(addDishName))"
        let dishNameExistsCondition = sqlite3_exec(db, doesDishNameExist, nil, nil, nil);
        if  dishNameExistsCondition == SQLITE_OK {
            //pop up error
            print("dish name exists")
            dishNameExists = true
        }
        
        if dishNameEmpty || dishNameExists{ return }
        //halt the save if there's an error, otherwise continue
        
        let addDishTempStruct = DishInformation(name: addDishName.text!, rating: addDishRating, strain: addDishStrain.text!, notes: addDishNotes.text, img: nil)
            //add to sqlite db (fix up img later), segue to dish table view
        
        let addDishToTable = "INSERT INTO StoredDishes VALUES (\(addDishTempStruct.name),\(addDishTempStruct.rating), \(addDishTempStruct.strain), \(addDishTempStruct.notes), \(addDishTempStruct.img))"
        
        sqlite3_exec(db, addDishToTable, nil, nil, nil);
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
