//
//  main.swift
//  iMultiply
//
//  Created by beshbashbosh on 10/02/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

enum QuestionType: CaseIterable {
    case add
    case subtract
    case multiply
}

struct Question {
    var left: Int
    var right: Int
    var operation: QuestionType
    
    init() {
        left = Int.random(in: 1...12)
        right = Int.random(in: 1...12)
        operation = QuestionType.allCases.randomElement()!
    }
}

class iMultiply {
    var questionNumber = 1
    var score = 0
    
    func start() {
        print("Welcome to iMultiple!")
        
        repeat {
            let left = Int.random(in: 1...12)
            let right = Int.random(in: 1...12)
            let operation = QuestionType.allCases.randomElement()!
            
            let question: String
            
            switch operation {
            case .add:
                question = "What is \(left) plus \(right)?"
            case .subtract:
                question = "What is \(left) minus \(right)?"
            case .multiply:
                question = "What is \(left) multiplied by \(right)?"
            }
            
            let correctAnswer: Int
            
            switch operation {
            case .add: correctAnswer = left + right
            case .subtract: correctAnswer = left - right
            case .multiply: correctAnswer = left * right
            }
            
            print("\n\(questionNumber). \(question)")
            print("Your answer: ", terminator: "")
            
            if let answer = readLine() {
                guard let answerInt = Int(answer) else {
                    print("Error")
                    continue
                }
                
                questionNumber += 1
                
                if answerInt == correctAnswer {
                    score += 1
                    print("Correct")
                } else {
                    print("Wrong!")
                }
            }
            
        } while questionNumber < 10
        
        print("\nYou score \(score).")
    }
}

let game = iMultiply()
game.start()
