//
//  ViewController.swift
//  multiplesApp
//
//  Created by Meitar Basson on 25/05/2016.
//  Copyright © 2016 meitar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var last: Int = 0
    var add: Int = 0
    var sum: Int = 0
    var max: Int = 0
    
    // Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var addText: UITextField!
    @IBOutlet weak var startPlay: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var display: UILabel!
    
    // Actions

    @IBAction func play(sender: UIButton!){
        if checkIfEntered(){
            logo.hidden = true
            addText.hidden = true
            startPlay.hidden = true
        
            addButton.hidden = false
            display.hidden = false
            
            max = Int(addText.text!)! * 20
            add = Int(addText.text!)!
            
            calculation()
            
        }
    }
    
    @IBAction func add(sender: UIButton!){
       calculation()
    }
    
    
    func checkIfEntered() -> Bool{
        if addText.text != "" && addText != nil{
            return true
        }
        return false
    }
    
    func resetGame(){
        sum = 0
        last = 0
        logo.hidden = false
        addText.hidden = false
        startPlay.hidden = false
        
        addButton.hidden = true
        display.hidden = true
    }
    
    func calculation(){
        if sum < max {
            sum = last + add
            display.text = "\(last) + \(add) = \(sum)"
            last = last + add
        }else{
            resetGame()
        }
    }
    
    
}

