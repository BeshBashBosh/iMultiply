//
//  main.swift
//  iMultiply
//
//  Created by beshbashbosh on 10/02/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

enum QuestionType {
    case add
    case subtract
    case multiply
}

class iMultiply {
    var questionNumber = 1
    var score = 0
    
    func start() {
        print("Welcome to iMultiple!")
        
        repeat {
            
        } while questionNumber < 10
        
        print("\nYou score \(score).")
    }
}

let game = iMultiply()
game.start()
