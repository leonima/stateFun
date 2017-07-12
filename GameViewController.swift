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
    var states = ["Florida", "Illinois", "Georgia", "North Carolina", "Washington", "Missouri", "Minnesota", "South Carolina", "Kentucky"]
    
    @IBOutlet weak var state1: UILabel!
    @IBOutlet weak var state2: UILabel!
    @IBOutlet weak var state3: UILabel!
    @IBOutlet weak var state4: UILabel!
    @IBOutlet weak var state5: UILabel!
    @IBOutlet weak var state6: UILabel!
    @IBOutlet weak var state7: UILabel!
    @IBOutlet weak var state8: UILabel!
    @IBOutlet weak var state9: UILabel!
    @IBOutlet weak var state10: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    
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
    
    
}
