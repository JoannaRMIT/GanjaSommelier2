//
//  AddDishController.swift
//  GanjaSommelier
//
//  Created by Default on 19/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import UIKit

class AddDishController: UIViewController {

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
        
        
        let addDishTempStruct: DishInformation = DishInformation(name: addDishName.text!, rating: addDishRating, strain: addDishStrain.text!, notes: addDishNotes.text, img: nil)
            //add to sqlite db (fix up img later), switch to dish table view
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
