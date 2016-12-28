//
//  ViewController.swift
//  MiraclePill
//
//  Created by Chirag Dadia on 12/27/16.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var successView: UIView!
    
    
    let states = ["PA", "NY", "NJ", "CA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        buyNowButton.isHidden = true
    }
    
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        successView.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        self.view.isOpaque = false
        statePicker.isHidden = true
        buyNowButton.isHidden = false
        successView.isHidden = true
    }
}
