//
//  Question.swift
//  Quizzler
//
//  Created by Owen Henley on 9/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let question: String
    let answer: Bool
    
    init(question: String, correctAnswer: Bool) {
        self.question = question
        self.answer = correctAnswer
    }
    
}
