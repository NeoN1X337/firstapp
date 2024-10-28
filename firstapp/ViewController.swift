   //
//  ViewController.swift
//  firstapp
//
//  Created by Алдияр Женисулы on 28.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var TextField2: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
        //label.text = TextField.text
        let a = TextField.text!
        let b = TextField2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        if let numberA = Int(a), let numberB = Int(b){
            let sum = numberA + numberB
            
            label.text = String(sum)
        }
        else{
            label.text = "Need to Write 2 numbers"
        }
        
        
        
        
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = TextField.text!
        let b = TextField2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Int(a), let numberB = Int(b) else{
            label.text = "Need to Write 2 numbers"
            
            return
        }
        
        let minus = numberA - numberB
        
        label.text = String(minus)
    }
    
    @IBAction func multiple(_ sender: Any) {
        let a = TextField.text!
        let b = TextField2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        if let numberA = Int(a), let numberB = Int(b){
            let multiplacation = numberA * numberB
            
            label.text = String(multiplacation)
        }
        else{
            label.text = "Need to Write 2 numbers"
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = TextField.text!
        let b = TextField2.text!
        
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Double(a), let numberB = Double(b) else{
            label.text = "Need to Write 2 numbers"
            
            return
        }
        
        let division = numberA / numberB
        
        label.text = String(division)
    }
    
    
    
    
}

