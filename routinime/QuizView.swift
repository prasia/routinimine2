//
//  QuizView.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import SwiftUI

struct QuizView: View {
    
    @State var score = 0
    
    var body: some View {
        
        NavigationView{
            VStack(spacing:20){
                Text("Welcome to the Chronotype Quiz!")
                
                //Button to start quiz
                NavigationLink(destination:Quiz1()){
                    Text("Start Quiz!")
                }
                HStack{
                    
                }
            }//.navigationBarTitle("Quiz Example",displayMode: .inline)
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
