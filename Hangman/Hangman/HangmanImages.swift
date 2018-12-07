//
//  HangmanImages.swift
//  Hangman
//
//  Created by Jabeen's MacBook on 12/6/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

struct hangmanImage {
    var number: Int
    var image: UIImage
    
    static var allPictures = [hangmanImage(number: 0, image:UIImage.init(named:"hang7")!),
                              hangmanImage(number: 1, image: UIImage.init(named:"hang6")!),
                              hangmanImage(number: 2, image: UIImage.init(named:"hang5")!),
                              hangmanImage(number: 3, image: UIImage.init(named:"hang4")!),
                              hangmanImage(number: 4, image: UIImage.init(named:"hang3")!),
                              hangmanImage(number: 5, image: UIImage.init(named:"hang2")!),
                              hangmanImage(number: 6, image: UIImage.init(named:"hang1")!),
                              ]
    
}
