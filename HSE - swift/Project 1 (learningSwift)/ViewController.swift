//
//  ViewController.swift
//  Project 1 (learningSwift)
//
//  Created by Наталья Автухович on 31.05.2020.
//  Copyright © 2020 Наталья Автухович. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dollarCourse: Float = 74
    var answer: Float = 0
    var convert: String = ""
    var order: Bool = true // порядок (доллары -> рубли (true))
    
    let Course: [String:Float] = ["$": 69, "€": 77, "£": 86, "₽": 1]
    
    @IBOutlet weak var value: UITextField!
    @IBOutlet weak var converted: UITextField!
    
    
    @IBOutlet weak var ConvertedLabel: UILabel!
    @IBOutlet weak var ValueLabel: UILabel!
    
    
    @IBOutlet var Values2: [UIButton]!
    @IBOutlet var Values1: [UIButton]!
    
    @IBAction func ChangeValues(_ sender: UIButton) {
        order = !order
        convert = ValueLabel.text ?? "--"
        ValueLabel.text = ConvertedLabel.text
        ConvertedLabel.text = convert
    }
    
    
    @IBAction func Run(_ sender: UIButton) {
        convert = value.text ?? "1" // По умолчанию будем конвектировать 1
        if (order){
            answer = Float(convert)! * Course[ValueLabel.text!]! / Course[ConvertedLabel.text!]!
        }
        else{
            answer = Float(convert)! * Course[ValueLabel.text!]! / Course[ConvertedLabel.text!]!
        }
        converted.text = String(answer)
    }
    
    @IBAction func Value2(_ sender: UIButton) {
        for button in Values2{
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    @IBAction func Value1(_ sender: UIButton) {
        for button in Values1{
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    @IBAction func Value1Tap(_ sender: UIButton) {
        guard let value_to_convert = sender.currentTitle else{
            return
        }
        
        ValueLabel.text = value_to_convert
    }
    
    @IBAction func ConvertedTap(_ sender: UIButton) {
        guard let converted_value = sender.currentTitle else{
            return
        }
        
        ConvertedLabel.text = converted_value
    }
}

