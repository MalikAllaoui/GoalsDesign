//
//  ContentView.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 16/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                    Image("Goals icon")
                        .resizable()
                    .frame(width: 100, height: 100)
                ExtractedView(titleText: "Take part on a new adventure", description: "Jump into a challenge with your link and crush your goals with friends by your side!", buttonText: "Join a challenge")
                
                ExtractedView(titleText: "Get proactive", description: "Take the initiative to be a leader, and create a challenge of your own!", buttonText: "Create a challenge")
                Spacer()
            }
        }
    }
    
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    let titleText:String
    let description:String
    let buttonText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.custom("BebasNeue", size: 50))
                .padding(.leading, 12)
            Text(description)
                .font(.custom("Roboto-Regular", size: 18))
                .bold()
            VStack {
                Button(buttonText) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }.font(.custom("BebasNeue-Regular", size: 45))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 390, height: 70)  // Set a height to the button for a better appearance
                    .background(Color(red: 1.0, green: 0.25, blue: 0.09))
                    .cornerRadius(25)
            }.padding(.top, 20)
            
        }
        .padding(.horizontal)
    }
}
