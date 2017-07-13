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
        if imageView.image == UIImage(named: "AK") && answerTextField.text == "Alaska" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "AK") && answerTextField.text != "Alaska" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        
        if imageView.image == UIImage(named: "AL") && answerTextField.text == "Alabama" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "AL") && answerTextField.text != "Alabama" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        
        if imageView.image == UIImage(named: "AR") && answerTextField.text == "Arkansas" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "AR") && answerTextField.text != "Arkansas" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        
        if imageView.image == UIImage(named: "AZ") && answerTextField.text == "Arizona" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "AZ") && answerTextField.text != "Arizona" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "CA") && answerTextField.text == "California" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "CA") && answerTextField.text != "California" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "CO") && answerTextField.text == "Colorado" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "CO") && answerTextField.text != "Colorado" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "CT") && answerTextField.text == "Connecticut" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "CT") && answerTextField.text != "Connecticut" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "DE") && answerTextField.text == "Delaware" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "DE") && answerTextField.text != "Delaware" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "FL") && answerTextField.text == "Florida" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "FL") && answerTextField.text != "Florida" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "GA") && answerTextField.text == "Georgia" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "GA") && answerTextField.text != "Georgia" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "HI") && answerTextField.text == "Hawaii" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "HI") && answerTextField.text != "Hawaii" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "IA") && answerTextField.text == "Iowa" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "IA") && answerTextField.text != "Iowa" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "ID") && answerTextField.text == "Idaho" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "ID") && answerTextField.text != "Idaho" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "IL") && answerTextField.text == "Illinois" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "IL") && answerTextField.text != "Illinois" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "IN") && answerTextField.text == "Indiana" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "IN") && answerTextField.text != "Indiana" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "KS") && answerTextField.text == "Kansas" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "KS") && answerTextField.text != "Kansas" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "KY") && answerTextField.text == "Kentucky" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "KY") && answerTextField.text != "Kentucky" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "LA") && answerTextField.text == "Louisiana" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "LA") && answerTextField.text != "Louisiana" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MA") && answerTextField.text == "Massachusetts" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MA") && answerTextField.text != "Massachusetts" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MD") && answerTextField.text == "Maryland" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MD") && answerTextField.text != "Maryland" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "ME") && answerTextField.text == "Maine" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "ME") && answerTextField.text != "Maine" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MI") && answerTextField.text == "Michigan" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MI") && answerTextField.text != "Michigan" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MN") && answerTextField.text == "Minnesota" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MN") && answerTextField.text != "Minnesota" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MO") && answerTextField.text == "Missouri" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MO") && answerTextField.text != "Missouri" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MS") && answerTextField.text == "Mississippi" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MS") && answerTextField.text != "Mississippi" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "MT") && answerTextField.text == "Montana" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "MT") && answerTextField.text != "Montana" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NC") && answerTextField.text == "North Carolina" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NC") && answerTextField.text != "North Carolina" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "ND") && answerTextField.text == "North Dakota" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "ND") && answerTextField.text != "North Dakota" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NE") && answerTextField.text == "Nebraska" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NE") && answerTextField.text != "Nebraska" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NH") && answerTextField.text == "New Hampshire" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NH") && answerTextField.text != "New Hampshire" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NJ") && answerTextField.text == "New Jersey" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NJ") && answerTextField.text != "New Jersey" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NM") && answerTextField.text == "New Mexico" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NM") && answerTextField.text != "New Mexico" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NV") && answerTextField.text == "Nevada" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NV") && answerTextField.text != "Nevada" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "NY") && answerTextField.text == "New York" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "NY") && answerTextField.text != "New York" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "OH") && answerTextField.text == "Ohio" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "OH") && answerTextField.text != "Ohio" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "OK") && answerTextField.text == "Oklahoma" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "OK") && answerTextField.text != "Oklahoma" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "OR") && answerTextField.text == "Oregon" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "OR") && answerTextField.text != "Oregon" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "PA") && answerTextField.text == "Pennsylvania" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "PA") && answerTextField.text != "Pennsylvania" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "RI") && answerTextField.text == "Rhode Island" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "RI") && answerTextField.text != "Rhode Island" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "SC") && answerTextField.text == "South Carolina" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "SC") && answerTextField.text != "South Carolina" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "SD") && answerTextField.text == "South Dakota" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "SD") && answerTextField.text != "South Dakota" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "TN") && answerTextField.text == "Tennessee" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "TN") && answerTextField.text != "Tennessee" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "TX") && answerTextField.text == "Texas" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "TX") && answerTextField.text != "Texas" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "UT") && answerTextField.text == "Utah" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "UT") && answerTextField.text != "Utah" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "VA") && answerTextField.text == "Virginia" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "VA") && answerTextField.text != "Virginia" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "VT") && answerTextField.text == "Vermont" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "VT") && answerTextField.text != "Vermont" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "WA") && answerTextField.text == "Washington" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "WA") && answerTextField.text != "Washington" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "WI") && answerTextField.text == "Wisconsin" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "WI") && answerTextField.text != "Wisconsin" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "WV") && answerTextField.text == "West Virginia" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "WV") && answerTextField.text != "West Virginia" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
        }
        if imageView.image == UIImage(named: "WY") && answerTextField.text == "Wyoming" && answerTextField.text != ""
        {
            wrongImage.alpha = 0.0
            rightImage.alpha = 1.0
        }
        
        if imageView.image == UIImage(named: "WY") && answerTextField.text != "Wyoming" && answerTextField.text != ""
        {
            wrongImage.alpha = 1.0
            rightImage.alpha = 0.0
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

