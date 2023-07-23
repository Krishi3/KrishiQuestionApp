//
//  ContentView.swift
//  KrishiQuestionApp
//
//  Created by Krishi Dalal on 2023-07-14.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
            NavigationStack {
                VStack{
                    Text("Hello! Welcome to a 2000s Music Trivia!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.788, saturation: 0.752, brightness: 0.439))
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 20.0)
                    Image("home screen image")
                        .resizable(resizingMode: .stretch)
                        .padding(.horizontal)
                    Spacer()
                    Spacer()
                    NavigationLink(destination: FirstQuestion()) {
                        Text("Click here to begin!😁")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.purple)
                    }
                }
            }
        }
    }

       
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
