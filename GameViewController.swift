//
//  GameViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 7/5/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var state1: UILabel!
    @IBOutlet weak var state2: UILabel!
    
    @IBOutlet weak var blank1: UITextField!
    @IBOutlet weak var blank2: UITextField!
    @IBOutlet weak var blank3: UITextField!
    @IBOutlet weak var blank4: UITextField!
    @IBOutlet weak var blank5: UITextField!
    @IBOutlet weak var blank6: UITextField!
    @IBOutlet weak var blank7: UITextField!
    @IBOutlet weak var blank8: UITextField!
    @IBOutlet weak var blank9: UITextField!
    @IBOutlet weak var blank10: UITextField!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent!)
    {
        for touch in touches
        {
            let location = touch.location(in: self.view)
            
            if state1.frame.contains(location)
            {
                state1.center = location
            }
            else if state2.frame.contains(location)
            {
                state2.center = location
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self.view)
            
            if state1.frame.contains(location)
            {
                state1.center = location
            }
            else if state2.frame.contains(location)
            {
                state2.center = location
            }
        }
        
    }
    
    /*override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        if
    }*/
    
    /*@IBAction func checkAnswersButton(_ sender: Any)
    {
        if 
        {
            print("okay")
        }
    }*/
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}
