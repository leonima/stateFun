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
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var wrongImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
    var answer = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    var statesImages = [UIImage]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.hideKeyboard()
        wrongImage.alpha = 0.0
        rightImage.alpha = 0.0
        wrongImage.image = UIImage(named: "cross")
        rightImage.image = UIImage(named: "check")
        
        imageView.image = UIImage(named: "AK")
        statesImages = [#imageLiteral(resourceName: "AL"), #imageLiteral(resourceName: "AK"), #imageLiteral(resourceName: "AZ"), #imageLiteral(resourceName: "AR"), #imageLiteral(resourceName: "CA"), #imageLiteral(resourceName: "CO"), #imageLiteral(resourceName: "CT"), #imageLiteral(resourceName: "DE"), #imageLiteral(resourceName: "FL"), #imageLiteral(resourceName: "HI"), #imageLiteral(resourceName: "ID"), #imageLiteral(resourceName: "IL"), #imageLiteral(resourceName: "IN"), #imageLiteral(resourceName: "IA"), #imageLiteral(resourceName: "KS"), #imageLiteral(resourceName: "KY"), #imageLiteral(resourceName: "LA"), #imageLiteral(resourceName: "ME"), #imageLiteral(resourceName: "MD"), #imageLiteral(resourceName: "MS"), #imageLiteral(resourceName: "MO"), #imageLiteral(resourceName: "MI"), #imageLiteral(resourceName: "MO"), #imageLiteral(resourceName: "MN"), #imageLiteral(resourceName: "MA"), #imageLiteral(resourceName: "MT"), #imageLiteral(resourceName: "NE"), #imageLiteral(resourceName: "NY"), #imageLiteral(resourceName: "NJ"), #imageLiteral(resourceName: "ND"), #imageLiteral(resourceName: "NM"), #imageLiteral(resourceName: "NV"), #imageLiteral(resourceName: "NC"), #imageLiteral(resourceName: "NH"), #imageLiteral(resourceName: "OR"), #imageLiteral(resourceName: "OK"), #imageLiteral(resourceName: "OH"), #imageLiteral(resourceName: "PA"), #imageLiteral(resourceName: "RI"), #imageLiteral(resourceName: "SC"), #imageLiteral(resourceName: "SD"), #imageLiteral(resourceName: "TN"), #imageLiteral(resourceName: "TX"), #imageLiteral(resourceName: "UT"), #imageLiteral(resourceName: "VA"), #imageLiteral(resourceName: "VT"), #imageLiteral(resourceName: "WA"), #imageLiteral(resourceName: "WI"), #imageLiteral(resourceName: "WY"), #imageLiteral(resourceName: "WV")]
    }

    @IBAction func nextPictureButton(_ sender: UIButton)
    {
         let randomIndex = Int(arc4random_uniform(UInt32(statesImages.count)))
        imageView.image = statesImages[randomIndex]
        wrongImage.alpha = 0.0
        rightImage.alpha = 0.0
        
    }
    
    @IBAction func checkButton(_ sender: UIButton)
    {
        answerWrong(stateAb: "AK", stateName: "Alaska")
        answerWrong(stateAb: "AL", stateName: "Alabama")
        answerWrong(stateAb: "AZ", stateName: "Arizona")
        answerWrong(stateAb: "AR", stateName: "Arkansas")
        answerWrong(stateAb: "CA", stateName: "California")
        answerWrong(stateAb: "CO", stateName: "Colorado")
        answerWrong(stateAb: "CT", stateName: "Connecticut")
        answerWrong(stateAb: "DE", stateName: "Delaware")
        answerWrong(stateAb: "FL", stateName: "Florida")
        answerWrong(stateAb: "HA", stateName: "Hawaii")
        answerWrong(stateAb: "ID", stateName: "Idaho")
        answerWrong(stateAb: "IL", stateName: "Illinois")
        answerWrong(stateAb: "IN", stateName: "Indiana")
        answerWrong(stateAb: "IO", stateName: "Iowa")
        answerWrong(stateAb: "KA", stateName: "Kansas")
        answerWrong(stateAb: "KE", stateName: "Kentucky")
        answerWrong(stateAb: "LA", stateName: "Louisiana")
        answerWrong(stateAb: "ME", stateName: "Maine")
        answerWrong(stateAb: "MD", stateName: "Maryland")
        answerWrong(stateAb: "MA", stateName: "Massachussetts")
        answerWrong(stateAb: "MI", stateName: "Michigan")
        answerWrong(stateAb: "MN", stateName: "Minnesota")
        answerWrong(stateAb: "MS", stateName: "Mississippi")
        answerWrong(stateAb: "MO", stateName: "Missouri")
        answerWrong(stateAb: "MT", stateName: "Montana")
        answerWrong(stateAb: "NE", stateName: "Nebraska")
        answerWrong(stateAb: "MV", stateName: "Nevada")
        answerWrong(stateAb: "NH", stateName: "New Hampshire")
        answerWrong(stateAb: "NJ", stateName: "New Jersey")
        answerWrong(stateAb: "NM", stateName: "New Mexico")
        answerWrong(stateAb: "NY", stateName: "New York")
        answerWrong(stateAb: "NC", stateName: "North Carolina")
        answerWrong(stateAb: "ND", stateName: "North Dakota")
        answerWrong(stateAb: "OH", stateName: "Ohio")
        answerWrong(stateAb: "OK", stateName: "Oklahoma")
        answerWrong(stateAb: "OR", stateName: "Oregon")
        answerWrong(stateAb: "PA", stateName: "Pennsylvania")
        answerWrong(stateAb: "RI", stateName: "Rhode Island")
        answerWrong(stateAb: "SC", stateName: "South Carolina")
        answerWrong(stateAb: "SD", stateName: "South Dakota")
        answerWrong(stateAb: "TN", stateName: "Tennessee")
        answerWrong(stateAb: "TX", stateName: "Texas")
        answerWrong(stateAb: "UT", stateName: "Utah")
        answerWrong(stateAb: "VT", stateName: "Vermont")
        answerWrong(stateAb: "VA", stateName: "Virginia")
        answerWrong(stateAb: "WA", stateName: "Washington")
        answerWrong(stateAb: "WV", stateName: "West Virgina")
        answerWrong(stateAb: "WI", stateName: "Wisconsin")
        answerWrong(stateAb: "WY", stateName: "Wyoming")
        answerRight(stateAb: "AK", stateName: "Alaska")
        answerRight(stateAb: "AL", stateName: "Alabama")
        answerRight(stateAb: "AZ", stateName: "Arizona")
        answerRight(stateAb: "AR", stateName: "Arkansas")
        answerRight(stateAb: "CA", stateName: "California")
        answerRight(stateAb: "CO", stateName: "Colorado")
        answerRight(stateAb: "CT", stateName: "Connecticut")
        answerRight(stateAb: "DE", stateName: "Delaware")
        answerRight(stateAb: "FL", stateName: "Florida")
        answerRight(stateAb: "HA", stateName: "Hawaii")
        answerRight(stateAb: "ID", stateName: "Idaho")
        answerRight(stateAb: "IL", stateName: "Illinois")
        answerRight(stateAb: "IN", stateName: "Indiana")
        answerRight(stateAb: "IO", stateName: "Iowa")
        answerRight(stateAb: "KA", stateName: "Kansas")
        answerRight(stateAb: "KE", stateName: "Kentucky")
        answerRight(stateAb: "LA", stateName: "Louisiana")
        answerRight(stateAb: "ME", stateName: "Maine")
        answerRight(stateAb: "MD", stateName: "Maryland")
        answerRight(stateAb: "MA", stateName: "Massachussetts")
        answerRight(stateAb: "MI", stateName: "Michigan")
        answerRight(stateAb: "MN", stateName: "Minnesota")
        answerRight(stateAb: "MS", stateName: "Mississippi")
        answerRight(stateAb: "MO", stateName: "Missouri")
        answerRight(stateAb: "MT", stateName: "Montana")
        answerRight(stateAb: "NE", stateName: "Nebraska")
        answerRight(stateAb: "MV", stateName: "Nevada")
        answerRight(stateAb: "NH", stateName: "New Hampshire")
        answerRight(stateAb: "NJ", stateName: "New Jersey")
        answerRight(stateAb: "NM", stateName: "New Mexico")
        answerRight(stateAb: "NY", stateName: "New York")
        answerRight(stateAb: "NC", stateName: "North Carolina")
        answerRight(stateAb: "ND", stateName: "North Dakota")
        answerRight(stateAb: "OH", stateName: "Ohio")
        answerRight(stateAb: "OK", stateName: "Oklahoma")
        answerRight(stateAb: "OR", stateName: "Oregon")
        answerRight(stateAb: "PA", stateName: "Pennsylvania")
        answerRight(stateAb: "RI", stateName: "Rhode Island")
        answerRight(stateAb: "SC", stateName: "South Carolina")
        answerRight(stateAb: "SD", stateName: "South Dakota")
        answerRight(stateAb: "TN", stateName: "Tennessee")
        answerRight(stateAb: "TX", stateName: "Texas")
        answerRight(stateAb: "UT", stateName: "Utah")
        answerRight(stateAb: "VT", stateName: "Vermont")
        answerRight(stateAb: "VA", stateName: "Virginia")
        answerRight(stateAb: "WA", stateName: "Washington")
        answerRight(stateAb: "WV", stateName: "West Virgina")
        answerRight(stateAb: "WI", stateName: "Wisconsin")
        answerRight(stateAb: "WY", stateName: "Wyoming")
    }
    
    func answerWrong(stateAb: String, stateName: String)
    {
        if imageView.image == UIImage(named: stateAb) && answerTextField.text != stateName && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
    }
    func answerRight(stateAb: String, stateName: String)
    {
        if imageView.image == UIImage(named: stateAb) && answerTextField.text == stateName && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
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
    
    
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(GuessViewController.dismissKeyboard))
            
        view.addGestureRecognizer(tap)
    }
        
    func dismissKeyboard()
    {
        view.endEditing(true)
    }
}

