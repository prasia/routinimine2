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
        VStack{
            Text("Your Chronotype is \(decideChrono())")
            NavigationLink(destination: ScheduleViews(), label:{
                Text("View Your Ideal Schedule!")
            })
            Link(destination: URL(string: "https://casper.com/blog/chronotype/")!, label: {
                Text("Learn More About Chronotypes")
                
            })
        }
    }
    func decideChrono()->String{
        var chronot: String
        if (value == 16){
            chronot="Lion"
        }
        else if (value >= 12){
            chronot="Wolf"
        }
        else if (value >= 8){
            chronot="Dolphin"
        }
        else{
            chronot="Bear"
        }
        return chronot
    }
}


