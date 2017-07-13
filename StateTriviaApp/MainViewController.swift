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
    var filteredArray = [String]()
    var searchController = UISearchController()
    var resultsController = UITableViewController()
    
    
    /*func searchBar()
    {
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        searchBar.delegate = self
        searchBar.showsScopeBar = true
        searchBar.tintColor = UIColor.lightGray
    }*/
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "apiQoshish", ofType: "json")
        let myData = try? Data(contentsOf: URL(fileURLWithPath: path!), options: .alwaysMapped)
        let json = try? JSON(data: myData!)
        parse(Data: json!)
        //searchBar()
        searchController = UISearchController(searchResultsController: resultsController)
        myTableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self as? UISearchResultsUpdating
        
        resultsController.tableView.delegate = self
        resultsController.tableView.dataSource = self
    }
    
    func updateSearchResults(for searchController: UISearchController)
    {
        filteredArray = states.filter({ (_: [[states]:String]) -> Bool in
            if array.contains(searchController.searchBar.text!)
            {
                return true
            }
            else
            {
                return false
            }
        })
        resultsController.tableView.reloadData()
    }
    
    /*func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        if searchText == ""
        {
            let path = Bundle.main.path(forResource: "apiQoshish", ofType: "json")
            let myData = try? Data(contentsOf: URL(fileURLWithPath: path!), options: .alwaysMapped)
            let json = try? JSON(data: myData!)
            parse(Data: json!)
        }
        else
        {
            if searchBar.selectedScopeButtonIndex == 0
            {
                states = states.filter({ (states) -> Bool in
                    return states.contains(where: searchText.lowercased())
                })
            }
            
        }
    }*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if tableView == resultsController.tableView
        {
            return filteredArray.count
        }
        else
        {
            return states.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let state = states[indexPath.row]
        if tableView == resultsController.tableView
        {
            cell.textLabel?.text = filteredArray[indexPath.row]
        }
        else
        {
            cell.textLabel!.text = states[indexPath.row]
        }
        cell.textLabel!.text = state["stateName"]
        
        return cell
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
            states.append(object)
            
        }
        myTableView.reloadData()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "b"
        {
            if let indexPath = myTableView.indexPathForSelectedRow
            {
                let state = states[indexPath.row]
                let dvc = segue.destination as! DetailViewController
                dvc.detailItem = state
            }
        
        }
    }
}
