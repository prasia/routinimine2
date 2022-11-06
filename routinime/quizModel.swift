//
//  quizModel.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import Foundation
struct QuizModel{
    var img: String?
    var text: String?
    var answer: [String]
    var values: [String]//["a", "b", "c", "d", "e"] BREAK GLASS IN CASE OF EMERGENCY
    //var correct: Int? //which one is correct
}

var myQuiz1: [QuizModel] = [
    QuizModel(img: "distracted",text: "At what time of day are you least distracted during work?", answer: ["Morning", "Night", "Afternoon" , "Evening"], values: ["a", "b", "c", "d"]),
    QuizModel(img: "time",text: "What time of day do you usually find yourself working? (Most often, NOT what you like best)", answer: ["Early Morning", "Late Night", "Evenings", "Afternoon" ], values: ["a", "b", "c", "d"]),
    QuizModel(img: "sleep",text: "If it were up to you, what time would you wake up and what time would you go to sleep?", answer: ["Rise Early (4-7 AM), Sleep Early (8-9 PM)", "Wake up Late (10-11 AM), Sleep Late (1-2 AM)", "Average Sleep and Rise Times (7 AM and 11 PM)", "It depends, usually (6:30-7:30 AM and 10-12 PM)" ], values: ["a", "b", "c", "d"]),
    QuizModel(img: "message",text: "Which of the following best describes how you work?", answer: ["Rise Early (4-7 AM), Sleep Early (8-9 PM)", "Wake up Late (10-11 AM), Sleep Late (1-2 AM)", "Average Sleep and Rise Times (7 AM and 11 PM)", "It depends, usually (6:30-7:30 AM and 10-12 PM)" ], values: ["a", "b", "c", "d"])
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}
func LoadScore (quiz: String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
