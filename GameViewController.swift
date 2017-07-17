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
    var tap = 0
    var selected = ""

    var stateLabels = [UILabel]()
    @IBOutlet weak var state1: UILabel!
    @IBOutlet weak var state2: UILabel!
    @IBOutlet weak var state3: UILabel!
    @IBOutlet weak var state4: UILabel!
    @IBOutlet weak var state5: UILabel!
    @IBOutlet weak var state6: UILabel!
    @IBOutlet weak var state7: UILabel!
    @IBOutlet weak var state8: UILabel!
    @IBOutlet weak var state9: UILabel!
    
    var blankLabels = [UILabel]()
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
        stateLabels = [state1, state2, state3, state4, state5, state6, state7, state8, state9]
        images = [image1, image2, image3, image4, image5, image6, image7, image8, image9]
        blankLabels = [label1, label2, label3, label4,label5, label6, label7, label8, label9]
        setStates()
    }

    @IBAction func onTap(_ sender: UITapGestureRecognizer)
    {
        if tap == 0
        {
            for state in stateLabels
            {
                let location = sender.location(in: self.view)
                if state.frame.contains(location)
                {
                    state.backgroundColor = UIColor.green
                    tap = 1
                    selected = state.text!
                }
            }
        }
        if tap == 1
        {
            for blank in blankLabels
            {
                let location = sender.location(in: self.view)
                if blank.frame.contains(location)
                {
                    blank.backgroundColor = UIColor.magenta
                    blank.text = selected
                    tap = 0
                    selected = ""
                }
            }
        }
    }
  
   func setStates()
   {
        state1.text = states[0]
        state2.text = states[7]
        state3.text = states[3]
        state4.text = states[2]
        state5.text = states[8]
        state6.text = states[1]
        state7.text = states[5]
        state8.text = states[6]
        state9.text = states[4]
        for state in stateLabels
        {
            state.backgroundColor = UIColor.red
        }
    }
    
    func checkAnswers(blankLabel: UILabel, whichState: UILabel, whichImage: UIImageView)
    {
        if blankLabel.text == whichState.text
        {
            whichImage.image = #imageLiteral(resourceName: "check")
        }
        else
        {
            whichImage.image = #imageLiteral(resourceName: "cross")
        }
    }
   
    
    @IBAction func checkAnswers(_ sender: Any)
    {
        checkAnswers(blankLabel: label1, whichState: state1, whichImage: image1)
        checkAnswers(blankLabel: label2, whichState: state6, whichImage: image2)
        checkAnswers(blankLabel: label3, whichState: state4, whichImage: image3)
        checkAnswers(blankLabel: label4, whichState: state3, whichImage: image4)
        checkAnswers(blankLabel: label5, whichState: state9, whichImage: image5)
        checkAnswers(blankLabel: label6, whichState: state2, whichImage: image6)
        checkAnswers(blankLabel: label7, whichState: state7, whichImage: image7)
        checkAnswers(blankLabel: label8, whichState: state8, whichImage: image8)
        checkAnswers(blankLabel: label9, whichState: state5, whichImage: image9)
        for image in images
        {
            image.alpha = 1
        }
    }
    
  
    @IBAction func playAgainButton(_ sender: Any)
    {
        setStates()
        state1.center = CGPoint(x: 66, y: 174)
        state2.center = CGPoint(x: 204, y: 174)
        state3.center = CGPoint(x: 342, y: 174)
        state4.center = CGPoint(x: 66, y: 220)
        state5.center = CGPoint(x: 204, y: 220)
        state6.center = CGPoint(x: 342, y: 220)
        state7.center = CGPoint(x: 66, y: 266)
        state8.center = CGPoint(x: 204, y: 266)
        state9.center = CGPoint(x: 342, y: 266)
        for image in images
        {
            image.alpha = 0
        }
        for label in blankLabels
        {
            label.text = ""
            label.backgroundColor = UIColor.cyan
        }
        
    }
    

}




