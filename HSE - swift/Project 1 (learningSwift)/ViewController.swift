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
    @IBOutlet weak var value: UITextField!
    @IBOutlet weak var converted: UITextField!
    
    
    @IBOutlet weak var ConvertedLabel: UILabel!
    @IBOutlet weak var ValueLabel: UILabel!
    
    
    @IBAction func ChangeValues(_ sender: UIButton) {
        order = !order
        convert = ValueLabel.text ?? "₽"
        ValueLabel.text = ConvertedLabel.text
        ConvertedLabel.text = convert
    }
    
    @IBAction func Run(_ sender: UIButton) {
        convert = value.text ?? "1" // По умолчанию будем конвектировать 1
        if (order){
            answer = Float(convert)! * dollarCourse
        }
        else{
            answer = Float(convert)! / dollarCourse
        }
        converted.text = String(answer)
    }
    
}

