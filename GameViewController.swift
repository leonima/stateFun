//
//  GameViewController.swift
//  StateTriviaApp
//
//  Created by Sakina Ali on 7/12/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    var location = CGPoint(x: 0, y: 0)
    var states = ["Florida", "Illinois", "Georgia", "North Carolina", "Washington", "Missouri", "Minnesota", "South Carolina", "Kentucky"]
    
    var labels = [UILabel]()
    @IBOutlet weak var state1: UILabel!
    @IBOutlet weak var state2: UILabel!
    @IBOutlet weak var state3: UILabel!
    @IBOutlet weak var state4: UILabel!
    @IBOutlet weak var state5: UILabel!
    @IBOutlet weak var state6: UILabel!
    @IBOutlet weak var state7: UILabel!
    @IBOutlet weak var state8: UILabel!
    @IBOutlet weak var state9: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    var images = [UIImageView]()
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        labels = [state1, state2, state3, state4, state5, state6, state7, state8, state9]
        images = [image1, image2, image3, image4, image5, image6, image7, image8, image9]
        textLabels()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
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
            else if state3.frame.contains(location)
             {
             state3.center = location
             }
             else if state4.frame.contains(location)
             {
             state4.center = location
             }
             else if state5.frame.contains(location)
             {
             state5.center = location
             }
             else if state6.frame.contains(location)
             {
             state6.center = location
             }
             else if state7.frame.contains(location)
             {
             state7.center = location
             }
             else if state8.frame.contains(location)
             {
             state8.center = location
             }
             else if state9.frame.contains(location)
             {
             state9.center = location
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
            else if state3.frame.contains(location)
             {
             state3.center = location
             }
             else if state4.frame.contains(location)
             {
             state4.center = location
             }
             else if state5.frame.contains(location)
             {
             state5.center = location
             }
             else if state6.frame.contains(location)
             {
             state6.center = location
             }
             else if state7.frame.contains(location)
             {
             state7.center = location
             }
             else if state8.frame.contains(location)
             {
             state8.center = location
             }
             else if state9.frame.contains(location)
             {
             state9.center = location
             }
            
        }
        
    }

    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        for state in labels
        {
            if label1.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 304.67)
            }
            if label2.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 350.34)
            }
            if label3.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 395.80)
            }
            if label4.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 441.15)
            }
            if label5.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 486.75)
            }
            if label6.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 532.30)
            }
            if label7.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 577.30)
            }
            if label8.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 623.85)
            }
            if label9.frame.contains(state.center)
            {
                state.center = CGPoint(x: 139.67, y: 666.75)
            }
            

        }
    }

    func textLabels()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(states.count)))
        state1.text = states[2]
        state2.text = states[7]
        state3.text = states[1]
        state4.text = states[0]
        state5.text = states[3]
        state6.text = states[5]
        state7.text = states[4]
        state8.text = states[6]
        state9.text = states[8]
    }
    
    @IBAction func checkAnswers(_ sender: Any)
    {
        checkAnswers(whichLabel: label1, whichState: state4, whichImage: image1)
        checkAnswers(whichLabel: label2, whichState: state3, whichImage: image2)
        checkAnswers(whichLabel: label3, whichState: state1, whichImage: image3)
        checkAnswers(whichLabel: label4, whichState: state5, whichImage: image4)
        checkAnswers(whichLabel: label5, whichState: state7, whichImage: image5)
        checkAnswers(whichLabel: label6, whichState: state6, whichImage: image6)
        checkAnswers(whichLabel: label7, whichState: state8, whichImage: image7)
        checkAnswers(whichLabel: label8, whichState: state2, whichImage: image8)
        checkAnswers(whichLabel: label9, whichState: state9, whichImage: image9)
        for image in images
        {
            image.alpha = 1
        }
    }
    
    func checkAnswers(whichLabel: UILabel, whichState: UILabel, whichImage: UIImageView)
    {
        if whichLabel.frame.contains(whichState.center)
        {
             whichImage.image = #imageLiteral(resourceName: "check")
        }
        else
        {
             whichImage.image = #imageLiteral(resourceName: "cross")
        }
    }
    
    @IBAction func playAgainButton(_ sender: Any)
    {
        textLabels()
        state1.center = CGPoint(x: 65, y: 160)
        state2.center = CGPoint(x: 203, y: 160)
        state3.center = CGPoint(x: 341, y: 160)
        state4.center = CGPoint(x: 65, y: 206)
        state5.center = CGPoint(x: 203, y: 206)
        state6.center = CGPoint(x: 341, y: 206)
        state7.center = CGPoint(x: 65, y: 251)
        state8.center = CGPoint(x: 203, y: 251)
        state9.center = CGPoint(x: 341, y: 251)
        for image in images
        {
            image.alpha = 0
        }
    }

}




