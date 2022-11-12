//
//  ViewController.swift
//  homeWork2.4
//
//  Created by Алексей Исаев on 12.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
    }


    @IBAction func redSliderAction() {
        redValue.text = String(round(redSlider.value * 100) / 100)
    }
    
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(round(greenSlider.value * 100) / 100)
    }
    
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(round(blueSlider.value * 100) / 100)
    }
}

