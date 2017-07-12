//
//  GuessViewController.swift
//  StateTriviaApp
//
//  Created by Ziyun Ma on 7/11/17.
//  Copyright © 2017 Sakina Ali. All rights reserved.
//

import UIKit

class GuessViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate
{
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBOutlet weak var answerTextField: UITextField!
    
    var answer = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return answer.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return answer[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        answerTextField.text = answer[row]
        pickerView1.isHidden = true
    }
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        pickerView1.isHidden = false
    }
}
