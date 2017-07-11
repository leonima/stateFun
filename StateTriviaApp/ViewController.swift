//
//  ViewController.swift
//  StateTriviaApp
//
//  Created by Sakina Ali on 6/28/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//dbfggf

import UIKit

class ViewController: UIViewController
    
{

    @IBOutlet weak var titleLabel: UILabel!

    
    struct state
    {
        let name: String!
        let population: Int!
    }
    
    var Array = [state]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Array = [state(name: "Alabama", population: 4858979), state(name:"Alaska", population: 738432)]
        
        Array.sorted(by: {$0.population < $1.population})
        
        for i in 0..<Array.count
        {
            print("\(Array[i].population)")
        }
    }
}

