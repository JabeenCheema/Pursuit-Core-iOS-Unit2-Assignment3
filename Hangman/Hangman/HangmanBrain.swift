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


var correctLetters = [String]()
    
    func spaces(userInput: String) -> String { // because _ is a character we need to define another var and then call our func; spaces and we do .map it takes an instance of  _ and spits that out; the amount of spaces the word has
        let userGuess = userInput.map { _ in return "_"} // because we are going to append incorrect letters into userguess, we need to let the comp know not to append wrong letters in correct label, instead just keep _
        correctLetters = userGuess
        return userGuess.reduce("", +)
    }
    func checkForWord(myArray: [String], typedWords: String) -> String {
        for (index,letter) in myArray.enumerated() {
            if letter == typedWords {
                correctLetters[index] = letter 
            }
        }
        return correctLetters.reduce("", +)
    }
    
    func image(myInt: Int) -> UIImage {
        return hangmanImage.allPictures.filter{$0.number == myInt}[0].image
    }
}
