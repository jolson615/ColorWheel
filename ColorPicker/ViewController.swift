//
//  ViewController.swift
//  ColorPicker
//
//  Created by Jeffrey L Olson Jr on 7/16/17.
//  Copyright © 2017 Jeffrey L Olson Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var colorWheel: UIPickerView!
    
    var pickerDataSource = ["White", "Red", "Green", "Blue"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.colorWheel.dataSource = self
        self.colorWheel.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.white
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.red
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.green
        }
        else
        {
            self.view.backgroundColor = UIColor.blue
        }
    }
    
    
    

}

