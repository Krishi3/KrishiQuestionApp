//
//  secondQuestion.swift
//  KrishiQuestionApp
//
//  Created by Krishi Dalal on 2023-07-14.
//

import SwiftUI

struct secondQuestion: View {
    @State private var answer1 = false
    @State private var answer2 = false
    @State private var answer3 = false
    
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
            VStack (spacing: 30){
                Text("Question 2: Finish the lyrics: So I put my hands up, they're playin' my song...")
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 10.0)
                Button("the floor goes crazy") {
                    answer1 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.pink)
                
                Button("the haters gonna go away") {
                    answer2 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.orange)
                
                Button("the butterflies fly away") {
                    answer3 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.green)
                
                if answer3 == true {
                    Text("You are right!")
                    Image("butterfly")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                } else if answer2 == true {
                    Text("You are wrong!")
                    
                } else if answer1 == true {
                    Text("You are wrong!")
                }
                
                NavigationLink(destination: thirdQuestion()){
                    Text("Next Question!")
                        .foregroundColor(Color.white)
                }
            }
        }

    }
}

struct secondQuestion_Previews: PreviewProvider {
    static var previews: some View {
        secondQuestion()
    }
}
