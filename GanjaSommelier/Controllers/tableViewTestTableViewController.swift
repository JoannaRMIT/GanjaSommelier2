//
//  tableViewTestTableViewController.swift
//  GanjaSommelier
//
//  Created by Joanna Ingram on 13/7/18.
//  Copyright © 2018 Joanna Ingram. All rights reserved.
//

import UIKit

class tableViewTestTableViewController: UITableViewController {

    // MARK: - Table view data source
    
//    struct ReturnedStrain
//    {
//        var id: Int
//        var name: String
//        var race: String
//        var flavor: String
//    }
//
//    var returnedStrains = [ReturnedStrain]()
//
//    var fruit0 = ReturnedStrain(id: 1, name: "Afpak", race: "hybrid", flavor: "Pine")
////    strains.append(fruit0)
//
//    var fruit1 = ReturnedStrain(id: 3, name: "Afternoon Delight", race: "hybrid", flavor: "Pine")
////    strains.append(fruit1)
//
//    var fruit2 = ReturnedStrain(id: 10, name: "Alaskan Ice", race: "sativa", flavor: "Pine")
////    strains.append(fruit2)
//
//    var fruit3 = ReturnedStrain(id: 11, name: "Alaskan Thunder Fuck", race: "sativa", flavor: "Pine")
//
//    var fruit4 = ReturnedStrain(id: 12, name: "Albert Walker", race: "hybrid", flavor: "Pine")
//
//    var fruit5 = ReturnedStrain(id: 23, name: "Alien Inferno", race: "hybrid", flavor: "Pine")
//
//    var fruit6 = ReturnedStrain(id: 42, name: "Alpine Blue", race: "hybrid", flavor: "Pine")
//
//    var fruit7 = ReturnedStrain(id: 43, name: "Alpine Star", race: "indica", flavor: "Pine")
//
//    var fruit8 = ReturnedStrain(id: 76, name: "Ash", race: "hybrid", flavor: "Pine")
//
//    var fruit9 = ReturnedStrain(id: 84, name: "Atomical Haze", race: "sativa", flavor: "Pine")
//
//    var fruit10 = ReturnedStrain(id: 86, name: "Aurora Indica", race: "hybrid", flavor: "Pine")
//
//    var fruit11 = ReturnedStrain(id: 101, name: "Balmoral", race: "hybrid", flavor: "Pine")
//
//    var fruit12 = ReturnedStrain(id: 119, name: "Bediol", race: "sativa", flavor: "Pine")

    
    var fruits = ["Afpak", "Afternoon Delight", "Afwreck", "Alaskan Ice", "Alaskan Thunder Fuck", "Albert Walker", "Alien Inferno", "Alpine Blue", "Alpine Star","Ash", "Atomical Haze", "Aurora Indica", "Balmoral","Bediol"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return fruits.count
//        print(returnedStrains.count)
        return fruits.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
//
        let kushName = fruits[indexPath.row]
        cell.textLabel?.text = kushName
        cell.detailTextLabel?.text = "Hybrid"
//        cell.imageView?.image = UIImage(named: fruitName)

        return cell
    }

}
