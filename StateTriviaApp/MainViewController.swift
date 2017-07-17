//
//  MainViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 7/5/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate
{

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

    var stateObjects = [[String:String]]()
    var searchActive : Bool = false
    var filtered:[String] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "apiQoshish", ofType: "json")
        let myData = try? Data(contentsOf: URL(fileURLWithPath: path!), options: .alwaysMapped)
        let json = try? JSON(data: myData!)
        parse(Data: json!)
        myTableView.delegate = self
        myTableView.dataSource = self
        searchBar.delegate = self
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
    {
        searchActive = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
    {
        searchActive = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
        searchActive = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        searchActive = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        filtered = states.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return range.location != NSNotFound
        })
        if filtered.count == 0
        {
            searchActive = false
        }
        else
        {
            searchActive = true
        }
        myTableView.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if searchActive
        {
            return filtered.count
        }
        return states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        if searchActive
        {
            cell.textLabel!.text = filtered[indexPath.row]
        }
        else
        {
            cell.textLabel!.text = states[indexPath.row]
        }
        return (cell)
    }

    
    func parse(Data: JSON)
    {
        for elements in Data["StateFactsList"].arrayValue
        {
            let stateName = elements["stateName"].stringValue
            let statePop = elements["statePop"].stringValue
            let statehoodYear = elements["statehoodYear"].stringValue
            let statehoodNumber = elements["statehoodNumber"].stringValue
            let nickName = elements["nickName"].stringValue
            let stateCapital = elements["stateCapital"].stringValue
            let stateBigCity = elements["stateBigCity"].stringValue
            let stateAbbreviation = elements["stateAbbreviation"].stringValue
            let stateBird = elements["stateBird"].stringValue
            let stateFlower = elements["stateFlower"].stringValue
            let stateFish = elements["stateFish"].stringValue
            let stateTree = elements["stateTree"].stringValue
            let stateFact = elements["stateFact"].stringValue
            let statePic = elements["statePic"].stringValue
            
            let object = ["stateName": stateName, "statePop": statePop, "statehoodYear": statehoodYear, "statehoodNumber": statehoodNumber, "nickName": nickName, "stateCapital": stateCapital, "stateBigCity": stateBigCity, "stateAbbreviation": stateAbbreviation, "stateBird": stateBird, "stateFlower": stateFlower, "stateFish": stateFish, "stateTree": stateTree, "stateFact": stateFact, "statePic": statePic]
            stateObjects.append(object)
        }
        myTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "b"
        {
            if let indexPath = myTableView.indexPathForSelectedRow
            {
                let state = stateObjects[indexPath.row]
                let dvc = segue.destination as! DetailViewController
                dvc.detailItem = state
            }
        }
    }
}
