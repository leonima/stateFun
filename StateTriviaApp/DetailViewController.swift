//
//  DetailViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 7/5/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    @IBOutlet weak var myLabel: UILabel!
    var detailItem: [String: String]!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myLabel.text = "    Did you know that \(detailItem["stateFact"]!)"
    
    }
 

}
