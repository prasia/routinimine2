//
//  FInalView.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import SwiftUI

struct FInalView: View {
    var value: Int
    var chrono: String
    var body: some View {
        //Text("Final Score: \(value)").onAppear(){
            //SaveScore(quiz: "myQuiz1", score: self.value)
            Text("chrono \(decideChrono())").onAppear(){
                SaveScore(quiz: "myQuiz1", score: self.value)
            }
        }
    func decideChrono()->String{
        var chronot: String
        if (value == 16){
            chronot="Lion"
        }
        else if (value>=12){
            chronot="Wolf"
        }
        else if (value>=8){
            chronot="Bear"
        }
        else{
            chronot="Dolphin"
        }
        return chronot
    }
    }


