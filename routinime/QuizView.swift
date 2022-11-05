//
//  QuizView.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                Text("Welcome to the Quiz Game!")
                
                //Button to start quiz
                NavigationLink(destination:Quiz1()){
                    Text("Star Quiz!")
                }
            }.navigationTitle("Quiz example",displayMode:.inline)
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
