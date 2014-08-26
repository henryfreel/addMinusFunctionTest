//
//  ViewController.swift
//  addMinusFunctionTest
//
//  Created by Henry Freel on 8/17/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = "\(number)"
        
        //plusButton.backgroundColor = UIColor(red:0.0, green:0.0, blue: 0.0, alpha: 0.0)
        //plusButton.tintColor = UIColor(red:0.6, green:0.0, blue: 0.0, alpha: 1.0)
        //plusButton.frame = CGRectMake(40, 40, 400, 750)
        //plusButton.setImage(UIImage(named:"plus.png"),forState:UIControlState.Normal)
        
        //minusButton.backgroundColor = UIColor(red:0.0, green:0.0, blue: 0.0, alpha: 0.0)
        //minusButton.tintColor = UIColor(red:0.6, green:0.0, blue: 0.0, alpha: 1.0)
        //minusButton.frame = CGRectMake(40, 40, 90, 750)
        //minusButton.setImage(UIImage(named:"minus.png"),forState:UIControlState.Normal)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func didPressStartButton(sender: AnyObject) {
        
        if number < 0 {
            
            number += 1
            numberLabel.text = "\(number)"
            println(number)
            
        } else if number >= 3 {
            
            plusButton.hidden = true
            
        } else {
            
            minusButton.hidden = false
            number += 1
            numberLabel.text = "\(number)"
            println("shiiiiiit")
        }
        
    }
    
    @IBAction func didPressMinusButton(sender: AnyObject) {
        
        if number > 3 {
            
            number -= 1
            numberLabel.text = "\(number)"

        } else if number <= 0 {
            
            minusButton.hidden = true
            println("aww yea")
            
        } else {
            
            plusButton.hidden = false
            number -= 1
            numberLabel.text = "\(number)"
            println("fucccckkkkk")
            
        }
    }

   
}

