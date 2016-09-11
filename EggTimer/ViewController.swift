//
//  ViewController.swift
//  EggTimer
//
//  Created by Rambo on 9/11/16.
//  Copyright © 2016 Rambo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @IBOutlet weak var timerDisplayLbl: UILabel!
    var counter = 210
    
    func processTimer(){

        if counter > 0 {
        counter -= 1
        timerDisplayLbl.text = "\(counter)"
        
        } else {
            timer.invalidate()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func pauseTimer(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    
    @IBAction func playTimer(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    

    @IBAction func resetTimer(_ sender: AnyObject) {
        timer.invalidate()
        timerDisplayLbl.text = "210"
        
    }
    
    
    @IBAction func removeTen(_ sender: AnyObject) {
        
        if counter > 10 {
            
        counter -= 10
        timerDisplayLbl.text = String(counter)
        }
        
    }

    
    @IBAction func addTen(_ sender: AnyObject) {
        counter += 10
        timerDisplayLbl.text = String(counter)
    }

    
}

