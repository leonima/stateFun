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
    var answer = ["Florida", "Illinois", "Georgia", "North Carolina", "Washington", "Missouri", "Minnesota", "South Carolina", "Kentucky"]
    
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
    
    @IBAction func PanGesture(_ sender: UIPanGestureRecognizer)
    {
        state1.center = CGPoint(x: 139.666656494141, y: 304.666656494141)
        
        state2.center = CGPoint(x: 139.666656494141, y: 350.33332824707)
        
        state3.center = CGPoint(x: 139.0, y: 395.33332824707)

        state4.center = CGPoint(x: 139.0, y: 440.0)
    }
 
    @IBAction func playAgainButton(_ sender: UIButton)
    {
        state1.text = "\(answer[randomNumber(number: answer.count)])"
        state2.text = "\(answer[randomNumber(number: answer.count)])"
        state3.text = "\(answer[randomNumber(number: answer.count)])"
        state4.text = "\(answer[randomNumber(number: answer.count)])"
        state5.text = "\(answer[randomNumber(number: answer.count)])"
        state6.text = "\(answer[randomNumber(number: answer.count)])"
        state7.text = "\(answer[randomNumber(number: answer.count)])"
        state8.text = "\(answer[randomNumber(number: answer.count)])"
        state9.text = "\(answer[randomNumber(number: answer.count)])"
    }
    
    func randomNumber(number: Int) -> Int
    {
        return Int(arc4random_uniform(UInt32(number)))
    }
    
}
