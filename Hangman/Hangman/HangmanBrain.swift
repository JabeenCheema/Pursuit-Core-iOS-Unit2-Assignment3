//
//  HangmanBrain.swift
//  Hangman
//
//  Created by Jabeen's MacBook on 11/26/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

var guess = 6 // global variable, later on we will call this in a separate file

class HangManBrain {

    var alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

var correctLetters = [String]()
    
    func spaces(userInput: String) -> String { // because _ is a character we need to define another var and then call our func; spaces and we do .map it takes an instance of  _ and spits out that
        let userGuess = userTextField.map { _ in return "_"} // because we are going to append incorrect letters into userguess, we need to let the comp know not to append wrong letters in correct label, instead just keep _
        correctLetters = userGuess
        return userTextField.reduce("", +)
    }
    
    
}
