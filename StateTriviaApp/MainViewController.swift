//
//  MainViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 7/5/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var myTableView: UITableView!
    
    var states = [[String: String]]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "apiQoshish", ofType: "txt")
        let myData = try? String(contentsOfFile:path!, encoding: String.Encoding.utf8)
        let json = try? JSON(myData!)
        print(json!)
        parse(Data: json!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let state = states[indexPath.row]
        cell.textLabel?.text = state["stateName"]
        
        return cell
    }
    
    func parse(Data: JSON)
    {
        print(Data.count)
        for elements in Data["StateFactsList"].arrayValue
        {
            let stateName = elements["stateName"].stringValue
            let statePop = elements["statePop"].stringValue
            let statehoodYear = elements["statehoodYear"].stringValue
            let statehoodNumber = elements["statehoodNumber"].stringValue
            let nickname = elements["nickname"].stringValue
            let stateCapital = elements["stateCapital"].stringValue
            let stateBigCity = elements["stateBigCity"].stringValue
            let stateAbbreviation = elements["stateAbbreviation"].stringValue
            let stateBird = elements["stateBird"].stringValue
            let stateFlower = elements["stateFlower"].stringValue
            let stateFish = elements["stateFish"].stringValue
            let stateTree = elements["stateTree"].stringValue
            let stateFact = elements["stateFact"].stringValue
            
            let object = ["stateName": stateName, "statePop": statePop, "statehoodYear": statehoodYear, "statehoodNumber": statehoodNumber, "nickname": nickname, "stateCapital": stateCapital, "stateBigCity": stateBigCity, "stateAbbreviation": stateAbbreviation, "stateBird": stateBird, "stateFlower": stateFlower, "stateFish": stateFish, "stateTree": stateTree, "stateFact": stateFact]
            states.append(object)
       
        }
        myTableView.reloadData()
        
    }

}
