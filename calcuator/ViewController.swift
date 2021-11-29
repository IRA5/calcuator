//
//  ViewController.swift
//  calcuator
//
//  Created by Irtaza Ali on 11/28/21.
//

import UIKit

class ViewController: UIViewController {
  
    var numberonscreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func number(_ sender: UIButton)
    {
        if performingMath == true
        {
            label.text = String(sender.tag - 1)
            numberonscreen = Double(label.text!)!
            performingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag - 1)
                    numberonscreen = Double(label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                label.text = "/";
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "*";
            }
            else if sender.tag == 14 //Minus
            {
                label.text = "-";
            }
            else if sender.tag == 15 //Add
            {
                label.text = "+";
            }
            
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousNumber / numberonscreen)
            }
        else if sender.tag == 13
        {
            label.text = String(previousNumber * numberonscreen)
        }
        else if sender.tag == 14
        {
            label.text = String(previousNumber - numberonscreen)
        }
        else if sender.tag == 15
        {
            label.text = String(previousNumber + numberonscreen)
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0;
            numberonscreen = 0;
            operation = 0;
        }
    }
    }
}

