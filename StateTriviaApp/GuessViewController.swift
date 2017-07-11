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
    
    var answer = ["answer", "answer1"]
    
    
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
