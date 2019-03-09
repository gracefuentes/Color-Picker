//
//  ViewController.swift
//  Color Picker
//
//  Created by Sheyla Astete.
//  Copyright © 2018 tech innovator. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

