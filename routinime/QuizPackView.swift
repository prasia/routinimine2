//
//  QuizPackView.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import SwiftUI

struct Quiz1: View {
    @State var i: Int = 0
    @State var answerDom = [String]()
    @State var score = 0
    @State var chrono = ""
    //@State private var showActionSheet = false
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            // if i < of questions -->  play question
            if (self.i < myQuiz1.count){
                
                Image(myQuiz1[self.i].img!).resizable().scaledToFit().padding(.horizontal)
                //Question Text
                Text(myQuiz1[self.i].text!)
                
                //Answer
                Button(action: {
                    self.buttonAction(n:0)
                }, label: {
                    Text(myQuiz1[self.i].answer[0]).foregroundColor(.black).padding().frame(maxWidth:.infinity, alignment: .leading).background(
                        RoundedRectangle(cornerRadius:8).stroke(Color.blue, lineWidth: 2))
                    /*Text(myQuiz1[self.i].values[self.i])
                    Text(myQuiz1[self.i].values[self.i])
                    Text(myQuiz1[self.i].values[self.i])
                    Text(myQuiz1[self.i].values[3])*/
                    
                })
                Button(action: {
                    self.buttonAction(n:1)
                }, label: {
                    Text(myQuiz1[self.i].answer[1]).foregroundColor(.black).padding().frame(maxWidth:.infinity, alignment: .leading).background(
                        RoundedRectangle(cornerRadius:8).stroke(Color.blue, lineWidth: 2))
                })
                Button(action: {
                    self.buttonAction(n:2)
                }, label: {
                    Text(myQuiz1[self.i].answer[2]).foregroundColor(.black).padding().frame(maxWidth:.infinity, alignment: .leading).background(
                        RoundedRectangle(cornerRadius:8).stroke(Color.blue, lineWidth: 2))
                })
                Button(action: {
                    self.buttonAction(n:3)
                }, label: {
                    Text(myQuiz1[self.i].answer[3]).foregroundColor(.black).padding().frame(maxWidth:.infinity, alignment: .leading).background(
                        RoundedRectangle(cornerRadius:8).stroke(Color.blue, lineWidth: 2))
                })

                
                
                
            }
            else{
                FInalView(value: self.score, chrono:"")
            }
        }.padding(.horizontal)
    }
    
    func buttonAction(n: Int){
        if (myQuiz1[self.i].values[n]=="a"){
            score+=4
            //print(score)
            //print(myQuiz1[self.i].values[self.i])
        }
        else if (myQuiz1[self.i].values[n]=="b"){
            score+=3
        }
        else if (myQuiz1[self.i].values[n]=="c"){
            score+=2
        }
        else if (myQuiz1[self.i].values[n]=="d"){
            score+=1
        }
        else{
            print("L")
        }
        self.i += 1
        
    }
    func decideChrono(){
        if (score == 16){
            chrono="Lion"
        }
        else if (score>=12){
            chrono="Wolf"
        }
        else if (score>=8){
            chrono="Bear"
        }
        else{
            chrono="Dolphin"
        }
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
