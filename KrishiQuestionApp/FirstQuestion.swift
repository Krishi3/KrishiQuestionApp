//
//  FirstQuestion.swift
//  KrishiQuestionApp
//
//  Created by Krishi Dalal on 2023-07-14.
//

import SwiftUI

struct FirstQuestion: View {
    @State private var beyonce = false
    @State private var rihanna = false
    @State private var cardiB = false

    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea()
        VStack (spacing: 30){
                Text("Question 1: Which artist composed the song All the Single Ladies?")
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .trailing], 10.0)
                Button("Beyonce 👸") {
                    beyonce = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.pink)
                
                Button("Rihanna 👸") {
                    rihanna = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.orange)
                
                Button("Cardi B 👸") {
                    cardiB = true
                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.green)
                
                if beyonce == true {
                    Text("You are right!")
                    Image("beyonce")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 20.0)        
                } else if rihanna == true {
                    Text("You are wrong!")
                    
                } else if cardiB == true {
                    Text("You are wrong!")
                }
                NavigationLink(destination: secondQuestion()) {
                    Text("Next Question!")
                        .foregroundColor(Color.white)
                }
            }
        }
    }
}

struct FirstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        FirstQuestion()
    }
}
