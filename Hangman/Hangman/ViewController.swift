//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hangmanPic: UIImageView!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var correctGuess: UILabel!
    
    @IBOutlet weak var secureText: UITextField!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var wrongGuesses: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
   
    }
}

extension ViewController: UITextFieldDelegate {
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                secureText.resignFirstResponder()
                userTextField.resignFirstResponder()
                return true
            }
            
            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                
                return true
            }
        }
    
    
    
    


