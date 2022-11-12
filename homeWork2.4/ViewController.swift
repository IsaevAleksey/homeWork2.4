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
        changeColor()
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        changeColor()
        redValue.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        changeColor()
        greenValue.text = String(round(greenSlider.value * 100) / 100)
  
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        changeColor()
        blueValue.text = String(round(blueSlider.value * 100) / 100)
    }
    
    private func changeColor () {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
