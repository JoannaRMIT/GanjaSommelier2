//
//  ViewController.swift
//  GanjaSommelier
//
//  Created by Joanna Ingram on 19/6/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController, UITableViewDataSource {
    
//    @IBOutlet weak var resultsTable: UITableView!

    
    
    
    
    
    var strains:[String] = ["Afpak", "Afternoon Delight", "Afwreck", "Alaskan Ice", "Alaskan Thunder Fuck", "Albert Walker", "Alien Inferno", "Alpine Blue", "Alpine Star","Ash", "Atomical Haze", "Aurora Indica", "Balmoral","Bediol"]
    
    var db: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        resultsTable.dataSource = self
        createStringsDishesDatabase()
        
    }
    
    func createStringsDishesDatabase()
    {
        let fileUrl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("storedStringsDishes.sqlite")
        
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK{
            print("Error opening database")
        }
        
        let createStoredStrainsTable = "CREATE TABLE StoredStrains (name TEXT PRIMARY KEY NOT NULL UNIQUE, flavours TEXT NOT NULL, race TEXT NOT NULL, matchWith TEXT, medicinalUse TEXT, positiveEffects TEXT, negativeEffects TEXT, isFavourite BOOLEAN NOT NULL)"
        
        if sqlite3_exec(db, createStoredStrainsTable, nil, nil, nil) != SQLITE_OK {
            print("error creating strains table")
        }
        
        let createStoredDishesTable = "CREATE TABLE StoredDishes (name TEXT PRIMARY KEY NOT NULL UNIQUE, rating INT, strain TEXT, notes TEXT, img TEXT"
        
        if sqlite3_exec(db, createStoredDishesTable, nil, nil, nil) != SQLITE_OK {
            print("error creating strains table")
        }
        
        print("database created successfully")
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

