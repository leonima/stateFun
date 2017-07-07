//
//  QuizViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 6/29/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate
{

    @IBOutlet weak var question1: UILabel!
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var question5: UILabel!
    @IBOutlet weak var question6: UILabel!
    @IBOutlet weak var question7: UILabel!
    @IBOutlet weak var question8: UILabel!
    
    @IBOutlet weak var answerTextField1: UITextField!
    @IBOutlet weak var answerTextField2: UITextField!
    @IBOutlet weak var answerTextField3: UITextField!
    @IBOutlet weak var answerTextField4: UITextField!
    @IBOutlet weak var answerTextField5: UITextField!
    @IBOutlet weak var answerTextField6: UITextField!
    @IBOutlet weak var answerTextField7: UITextField!
    @IBOutlet weak var answerTextField8: UITextField!
    
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBOutlet weak var pickerView2: UIPickerView!
    @IBOutlet weak var pickerView3: UIPickerView!
    @IBOutlet weak var pickerView4: UIPickerView!
    @IBOutlet weak var pickerView5: UIPickerView!
    @IBOutlet weak var pickerView6: UIPickerView!
    @IBOutlet weak var pickerView7: UIPickerView!
    @IBOutlet weak var pickerView8: UIPickerView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image22: UIImageView!
    @IBOutlet weak var image33: UIImageView!
    @IBOutlet weak var image44: UIImageView!
    @IBOutlet weak var image55: UIImageView!
    @IBOutlet weak var image66: UIImageView!
    @IBOutlet weak var image77: UIImageView!
    @IBOutlet weak var image88: UIImageView!
    
    var questionOne = "Which state has the most population?"
    var questionTwo = "Mount McKinley is located in which state?"
    var questionThree = "What is the state flower of Florida?"
    var questionFour = "Which state is the closest to Washington D.C.?"
    var questionFive = "What is the smallest U.S. state?"
    var questionSix = "What U.S. state boasts the following rivers: the Guadalupe, Trinity, Rio Grande, Brazos, and Colorado?"
    var questionSeven = "Which of the following states does NOT border the Great Lakes?"
    var questionEight = "Death Valley is located in what U.S. state?"

    var answer1 = ["Illinois", "Kentucky", "Maryland", "Delaware"]
    var answer2 = ["Arizona", "Washington", "Minnesota", "Alaska"]
    var answer3 = ["Roses", "Violets", "Orange Blossoms", "Cherry Blossoms"]
    var answer4 = ["New Mexico", "Maryland", "Oregon", "Maine"]
    var answer5 = ["Delaware", "Maryland", "Rhode Island", "Maine"]
    var answer6 = ["California", "Oklahoma", "Texas", "Colorado"]
    var answer7 = ["Ohio", "Michigan", "Iowa", "Illinois"]
    var answer8 = ["Nevada", "Utah", "California", "Texas"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        question1.text = questionOne
        question2.text = questionTwo
        question3.text = questionThree
        question4.text = questionFour
        question5.text = questionFive
        question6.text = questionSix
        question7.text = questionSeven
        question8.text = questionEight
        
        image1.image = UIImage(named: "check")
        image2.image = UIImage(named: "check")
        image3.image = UIImage(named: "check")
        image4.image = UIImage(named: "check")
        image5.image = UIImage(named: "check")
        image6.image = UIImage(named: "check")
        image7.image = UIImage(named: "check")
        image8.image = UIImage(named: "check")
        
        image11.image = UIImage(named: "cross")
        image22.image = UIImage(named: "cross")
        image33.image = UIImage(named: "cross")
        image44.image = UIImage(named: "cross")
        image55.image = UIImage(named: "cross")
        image66.image = UIImage(named: "cross")
        image77.image = UIImage(named: "cross")
        image88.image = UIImage(named: "cross")
        
        image1.alpha = 0.0
        image2.alpha = 0.0
        image3.alpha = 0.0
        image4.alpha = 0.0
        image5.alpha = 0.0
        image6.alpha = 0.0
        image7.alpha = 0.0
        image8.alpha = 0.0
        
        image11.alpha = 0.0
        image22.alpha = 0.0
        image33.alpha = 0.0
        image44.alpha = 0.0
        image55.alpha = 0.0
        image66.alpha = 0.0
        image77.alpha = 0.0
        image88.alpha = 0.0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        var countRows:Int = answer1.count
        if pickerView == pickerView2
        {
            countRows = self.answer2.count
        }
        else if pickerView == pickerView3
        {
            countRows = self.answer3.count
        }
        else if pickerView == pickerView4
        {
            countRows = self.answer4.count
        }
        else if pickerView == pickerView5
        {
            countRows = self.answer5.count
        }
        else if pickerView == pickerView6
        {
            countRows = self.answer6.count
        }
        else if pickerView == pickerView7
        {
            countRows = self.answer7.count
        }
        else if pickerView == pickerView8
        {
            countRows = self.answer8.count
        }
        return countRows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if pickerView == pickerView1
        {
            let titleRow = answer1[row]
            return titleRow
        }
        else if pickerView == pickerView2
        {
            let titleRow = answer2[row]
            return titleRow
        }
        else if pickerView == pickerView3
        {
            let titleRow = answer3[row]
            return titleRow
        }
        else if pickerView == pickerView4
        {
            let titleRow = answer4[row]
            return titleRow
        }
        else if pickerView == pickerView5
        {
            let titleRow = answer5[row]
            return titleRow
        }
        else if pickerView == pickerView6
        {
            let titleRow = answer6[row]
            return titleRow
        }
        else if pickerView == pickerView7
        {
            let titleRow = answer7[row]
            return titleRow
        }
        else if pickerView == pickerView8
        {
            let titleRow = answer8[row]
            return titleRow
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if pickerView == pickerView1
        {
            self.answerTextField1.text = self.answer1[row]
            self.pickerView1.isHidden = true
        }
        else if pickerView == pickerView2
        {
            self.answerTextField2.text = self.answer2[row]
            self.pickerView2.isHidden = true
        }
        else if pickerView == pickerView3
        {
            self.answerTextField3.text = self.answer3[row]
            self.pickerView3.isHidden = true
        }
        else if pickerView == pickerView4
        {
            self.answerTextField4.text = self.answer4[row]
            self.pickerView4.isHidden = true
        }
        else if pickerView == pickerView5
        {
            self.answerTextField5.text = self.answer5[row]
            self.pickerView5.isHidden = true
        }
        else if pickerView == pickerView6
        {
            self.answerTextField6.text = self.answer6[row]
            self.pickerView6.isHidden = true
        }
        else if pickerView == pickerView7
        {
            self.answerTextField7.text = self.answer7[row]
            self.pickerView7.isHidden = true
        }
        else if pickerView == pickerView8
        {
            self.answerTextField8.text = self.answer8[row]
            self.pickerView8.isHidden = true
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        if (textField == self.answerTextField1)
        {
            self.pickerView1.isHidden = false
        }
        else if (textField == self.answerTextField2)
        {
            self.pickerView2.isHidden = false
        }
        else if (textField == self.answerTextField3)
        {
            self.pickerView3.isHidden = false
        }
        else if (textField == self.answerTextField4)
        {
            self.pickerView4.isHidden = false
        }
        else if (textField == self.answerTextField5)
        {
            self.pickerView5.isHidden = false
        }
        else if (textField == self.answerTextField6)
        {
            self.pickerView6.isHidden = false
        }
        else if (textField == self.answerTextField7)
        {
            self.pickerView7.isHidden = false
        }
        else if (textField == self.answerTextField8)
        {
            self.pickerView8.isHidden = false
        }
    }
    
    @IBAction func checkButton(_ sender: Any)
    {
        if answerTextField1.text == "Illinois"
        {
            image1.alpha = 1.0
            image11.alpha = 0.0
        }
        else if answerTextField1.text != "Illinios" && answerTextField1.text != ""
        {
            image1.alpha = 0.0
            image11.alpha = 1.0
        }
        if answerTextField2.text == "Alaska"
        {
            image2.alpha = 1.0
            image22.alpha = 0.0
        }
        else if answerTextField2.text != "Alaska" && answerTextField2.text != ""
        {
            image2.alpha = 0.0
            image22.alpha = 1.0
        }
        if answerTextField3.text == "Orange Blossoms"
        {
            image3.alpha = 1.0
            image33.alpha = 0.0
        }
        else if answerTextField3.text != "Orange Blossoms" && answerTextField3.text != ""
        {
            image3.alpha = 0.0
            image33.alpha = 1.0
        }
        if answerTextField4.text == "Maryland"
        {
            image4.alpha = 1.0
            image44.alpha = 0.0
        }
        else if answerTextField4.text != "Maryland" && answerTextField4.text != ""
        {
            image4.alpha = 0.0
            image44.alpha = 1.0
        }
        if answerTextField5.text == "Rhode Island"
        {
            image5.alpha = 1.0
            image55.alpha = 0.0
        }
        else if answerTextField5.text != "Rhode Island" && answerTextField5.text != ""
        {
            image5.alpha = 0.0
            image55.alpha = 1.0
        }
        if answerTextField6.text == "Texas"
        {
            image6.alpha = 1.0
            image66.alpha = 0.0
        }
        else if answerTextField6.text != "Texas" && answerTextField6.text != ""
        {
            image6.alpha = 0.0
            image66.alpha = 1.0
        }
        if answerTextField7.text == "Iowa"
        {
            image7.alpha = 1.0
            image77.alpha = 0.0
        }
        else if answerTextField7.text != "Iowa" && answerTextField7.text != ""
        {
            image7.alpha = 0.0
            image77.alpha = 1.0
        }
        if answerTextField8.text == "California"
        {
            image8.alpha = 1.0
            image88.alpha = 0.0
        }
        else if answerTextField8.text != "California" && answerTextField8.text != ""
        {
            image8.alpha = 0.0
            image88.alpha = 1.0
        }
    }
}
