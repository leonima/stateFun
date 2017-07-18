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
    }
    
    @IBAction func checkButton(_ sender: UIButton)
    {
        
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

