//
//  ViewController.swift
//  Anagram
//
//  Created by Lauren Small on 8/31/18.
//  Copyright © 2018 Lauren Small. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var anagramDictionary = [
        "word" : "dorw",
        "chocolate" : "colocheta",
        "evil genius" : "vign leiuse"
    ]
    
    let anagram = "dorw"
    let solution = "word"
    var score = 0
    
    
    @IBAction func submitButton(_ sender: Any) {
        showInputDialogBox()
        }
    
    
    func showInputDialogBox() {
        let alert = UIAlertController(title: "Unscramble the following word(s)", message: anagram, preferredStyle: .alert)
        
//        let submit = UIAlertAction(title: "Submit", style: .default, handler: nil)
        
        let submit = UIAlertAction(title: "Submit", style: .default)  { (_) in
            let guess = alert.textFields?[0].text
        }
        
        
//        let guess = alert.textFields?[0].text
        
        //was handler: nil
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: respondToAlertAction)
        
        alert.addAction(submit)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
        if guess!.lowercased() == solution {
            self.result.text = "Correct! You get 1 point!"
            score += 1
            scoreLabel.text = "Score: \(score)"
        } else {
            self.result.text = "Incorrect.  You lose 1 point"
            score -= 1
            scoreLabel.text = "Score: \(score)"
        }
        
        

    
    }
    
    //userAction alert
    func respondToAlertAction(userAction: UIAlertAction) {
        print("You pressed the button")
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    

}


