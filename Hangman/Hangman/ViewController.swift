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
    
    
    var usedLetters = ""
    var hangManBrain: HangManBrain = HangManBrain()
    var newWord = [String]() // whatever word is put into the secure field 
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    secureText.delegate = self
    userTextField.delegate = self 
    }

    @IBAction func NewGameButton(_sender: UIButton) {
        secureText.text = ""
        userTextField.isHidden = true
        guess = 6
        messageLabel.text = "You have: \(guess) guesses left"
        hangmanPic.image = hangManBrain.image(myInt: guess)
    }
}

extension ViewController: UITextFieldDelegate {
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
             
                if textField == secureText {
                    userTextField.isHidden = false
                    newWord = textField.text!.map{String ($0)}
                let secureWord = hangManBrain.spaces(userInput: secureText.text!)
                correctGuess.text = "\(secureWord)"
                    
                }
            var winning = false
                if textField == userTextField {
                    guard let count = userTextField.text?.count, count == 1
                        else {
                            messageLabel.text = "You can only guess one letter at a time"
                            return false
                    }
                    let rightletterGuess = hangManBrain.checkForWord(myArray: newWord, typedWords: userTextField.text!)
                    correctGuess.text = "\(rightletterGuess)"
                    let wrongGuess = !rightletterGuess.contains(Character(userTextField.text!))  // text! we do this because we want to capture the alphabets lower case and upper case
                    if wrongGuess {
                        guess -= 1 // take away one guess chance
                        hangmanPic.image = hangManBrain.image(myInt: guess) // change the images based on the amount of wrong letters the user has guessed
                        usedLetters.append(userTextField.text!)
                        wrongGuesses.text = "\(usedLetters)" // the label that has all the wrong letters are in our usedletter string(in which we are appending)
                    }
                    if !rightletterGuess.contains("-") {
                        winning = true
                    }
                
                    messageLabel.text = "You have: \(guess) guesses left"
                    if guess == 0 {
                        messageLabel.text = "You wanna play again?"
                    }
            }
            
                if winning == true {
                    userTextField.isHidden = true
                    messageLabel.text = "You Won!"
                    messageLabel.isHidden = false
                    return false
                }
            userTextField.text = ""
                textField.resignFirstResponder()
                return true
    }
                
            func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                
                return true
            }
}

