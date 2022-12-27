//
//  ViewController.swift
//  AutoLayout_demo
//
//  Created by BJIT on 6/12/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let divisions = ["Dhaka", "Khulna", "Rajshahi", "Borisal", "Sylhet"]
    
    @IBOutlet weak var divisionPicker: UIPickerView!
    
    @IBOutlet weak var lBselectDivision: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return divisions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return divisions[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected \(divisions[row])")
        lBselectDivision.text = divisions[row]
    }

}

