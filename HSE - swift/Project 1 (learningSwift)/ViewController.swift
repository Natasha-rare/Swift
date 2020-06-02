//
//  ViewController.swift
//  Project 1 (learningSwift)
//
//  Created by Наталья Автухович on 31.05.2020.
//  Copyright © 2020 Наталья Автухович. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let course: Int = 74
    var answer: Int = 0
    var convert:String = ""
    @IBOutlet weak var value: UITextField!
    
    @IBOutlet weak var converted: UITextField!
    
    @IBAction func Run(_ sender: UIButton) {
        convert = value.text ?? "1" // По умолчанию будем конвектировать 1
        answer = Int(convert)! * course
        converted.text = String(answer)
    }
    
}

