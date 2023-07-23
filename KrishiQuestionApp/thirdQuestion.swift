//
//  thirdQuestion.swift
//  KrishiQuestionApp
//
//  Created by Krishi Dalal on 2023-07-14.
//

import SwiftUI

struct thirdQuestion: View {
    @State private var answer1 = false
    @State private var answer2 = false
    @State private var answer3 = false
    
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
            VStack (spacing: 30){
                Text("Question 3: Who wrote the song Poker Face?")
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 10.0)
                Button("Avril Lavigne") {
                    answer1 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.pink)
                
                Button("Sia") {
                    answer2 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.orange)
                
                Button("Lady Gaga") {
                    answer3 = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.green)
                
                if answer3 == true {
                    Text("You are right!")
                    Image("ladyGaga")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)
                    
                } else if answer2 == true {
                    Text("You are wrong!")
                    
                } else if answer1 == true {
                    Text("You are wrong!")
                }
                NavigationLink(destination: ContentView()) {
                    Text("Return to Main Page!")
                        .foregroundColor(Color.white)
                }

            }
        }

    }
}


struct thirdQuestion_Previews: PreviewProvider {
    static var previews: some View {
        thirdQuestion()
    }
}
