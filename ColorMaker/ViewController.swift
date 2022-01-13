//
//  ViewController.swift
//  ColorMaker
//
//  Created by Вячеслав Кремнев on 1/12/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var colorizedView: UIView!
    
    @IBOutlet weak var redScaleValue: UILabel!
    @IBOutlet weak var greenScaleValue: UILabel!
    @IBOutlet weak var blueScaleValue: UILabel!
    
  
    @IBOutlet weak var redScaleController: UISlider!
    @IBOutlet weak var greenScaleController: UISlider!
    @IBOutlet weak var blueScaleController: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redScaleController.minimumValue = 0
        redScaleController.maximumValue = 1
        redScaleValue.text = String(redScaleController.value)
        redScaleValue.adjustsFontSizeToFitWidth = false
        redScaleController.setValue(redScaleController.value, animated: true)
        
        greenScaleController.minimumValue = 0
        greenScaleController.maximumValue = 1
        greenScaleValue.text = String(greenScaleController.value)
        greenScaleValue.adjustsFontSizeToFitWidth = false
        greenScaleController.setValue(greenScaleController.value, animated: true)
       
        
        blueScaleController.minimumValue = 0
        blueScaleController.maximumValue = 1
        blueScaleValue.text = String(blueScaleController.value)
        blueScaleValue.adjustsFontSizeToFitWidth = false
        blueScaleController.setValue(blueScaleController.value, animated: true)
        
    
}

    
    @IBAction func redColorController(_ sender: UISlider) {
        
        redScaleValue.text = String(redScaleController.value)
        
        
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redScaleController.value),
            green: CGFloat(greenScaleController.value),
            blue: CGFloat(blueScaleController.value),
            alpha:1.0
        )
        
       
        
        
    }
    
    @IBAction func greenColorController(_ sender: UISlider) {
        
        greenScaleValue.text = String(greenScaleController.value)
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redScaleController.value),
            green: CGFloat(greenScaleController.value),
            blue: CGFloat(blueScaleController.value),
            alpha:1.0
        )
        
        
    }
    
    @IBAction func blueColorController(_ sender: UISlider) {
        
        blueScaleValue.text = String(blueScaleController.value)
        
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redScaleController.value),
            green: CGFloat(greenScaleController.value),
            blue: CGFloat(blueScaleController.value),
            alpha:1.0
        )
        
    }
    
}

