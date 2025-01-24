//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Salman Zaidi on 1/20/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    
    init(q question: String,a answer: String) {
        self.question = question
        self.answer = answer
    }
}
