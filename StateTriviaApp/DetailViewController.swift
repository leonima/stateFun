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
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myLabel.text = "    \(detailItem["stateName"]!) joined the union in \(detailItem["statehoodYear"]!) and became the \(detailItem["statehoodNumber"]!) state. This state now has a population of \(detailItem["statePop"]!) people. \(detailItem["nickName"]!)'s state bird is the \(detailItem["stateBird"]!), it's state flower is the beautiful \(detailItem["stateFlower"]!), the state tree of \(detailItem["stateName"]!) is the \(detailItem["stateTree"]!), and last but not least the state fish consist of the \(detailItem["stateFish"]!). Enough of the boring stuff, did you know that \(detailItem["stateFact"]!)?😱"
        myImage. = detailItem["statePic"]
    }


}
