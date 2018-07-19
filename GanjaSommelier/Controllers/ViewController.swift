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

