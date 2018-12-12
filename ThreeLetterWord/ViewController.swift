//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by GUSTAVO TORRES on 11/28/18.
//  Copyright © 2018 GUSTAVO TORRES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet var wordLabels: [UILabel]!
    
    var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    var counter = 0
    var currentLetter = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTapped(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: view
        )
        for label in wordLabels{
            if label.frame.contains(selectedPoint){
            label.text = "\(currentLetter)"
            }
        }
        counter += 1
        if counter == 26 {
            counter = resetCounter()
        }
        getAndSetCurrentLetter()
    }
    func getAndSetCurrentLetter() {
        currentLetterLabel.text = letters [counter]
    }
    func resetCounter() -> Int {
        let Alert = UIAlertController(title: "Reset Counter", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default){
            (action) in
            for label in self.wordLabels{
                label.text = "?"
            }
            
        }
        Alert.addAction(action)
        self.present(Alert, animated: true, completion: nil)
        return 0
    }
    
        
    
    
    
    
    
    
    
    
    

}

