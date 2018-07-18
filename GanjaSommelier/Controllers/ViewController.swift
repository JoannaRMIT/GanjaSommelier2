//
//  ViewController.swift
//  GanjaSommelier
//
//  Created by Joanna Ingram on 19/6/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
//    @IBOutlet weak var resultsTable: UITableView!
    var newDishRating: Int
    
    @IBOutlet weak var star1: UIButton!
    @IBOutlet weak var star2: UIButton!
    @IBOutlet weak var star3: UIButton!
    @IBOutlet weak var star4: UIButton!
    @IBOutlet weak var star5: UIButton!
    
    
    @IBAction func star1(_ sender: Any) {
        
        newDishRating = 1
        star1.setImage("star-selected", for: normal)
    }
    
    @IBAction func star2(_ sender: Any) {
        newDishRating = 2
    }
    
    @IBAction func star3(_ sender: Any) {
        newDishRating = 3
    }
    
    @IBAction func star4(_ sender: Any) {
        newDishRating = 4
    }
    
    @IBAction func star5(_ sender: Any) {
        newDishRating = 5
        UIImage.star-selected
    }
    @IBOutlet weak var nameInput: UITextField!
    @IBAction func saveDish(_ sender: Any) {
        let newDishName = nameInput.text
        
    }
    
    
    
    var strains:[String] = ["Afpak", "Afternoon Delight", "Afwreck", "Alaskan Ice", "Alaskan Thunder Fuck", "Albert Walker", "Alien Inferno", "Alpine Blue", "Alpine Star","Ash", "Atomical Haze", "Aurora Indica", "Balmoral","Bediol"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        resultsTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = UITableViewCell()
       
        cell.textLabel?.text = strains[indexPath.row]
        
        var textLabel = cell.textLabel?.text

        if textLabel == nil {
            textLabel = ""
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

