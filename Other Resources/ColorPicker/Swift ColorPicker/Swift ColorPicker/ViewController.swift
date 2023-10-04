//
//  ViewController.swift
//  Swift ColorPicker
//
//  Created by 0xJs on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
 
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
    
        updateColor()
    }
    
    func updateColor() {
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if greenSwitch.isOn {
            CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn {
            CGFloat(blueSlider.value)
        }
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 3)
        colorView.backgroundColor = color
    }
}
