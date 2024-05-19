//
//  ChallengeDescription.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 18/05/2024.
//

import SwiftUI

struct ChallengeDescription: View {
    var body: some View {
        VStack (spacing: 0){
                Image("running")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 290)
                    .clipped()
                    .edgesIgnoringSafeArea(.top)
                    .padding(.bottom, -60)
        VStack (alignment: .leading, spacing: 3){
            Text("Run with me")
                .font(.custom("BebasNeue", size: 55))
            HStack{
                Image("MalikPhoto")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 1) // Add a white border
                    )
                Text("By Malik Allaoui")
                    .font(.custom("BebasNeue", size: 25))
            }
            HStack{
                Text("Description")
                    .font(.custom("Roboto-Medium", size: 17))
                    .padding(.top)
            }
            Text("Hey there! I'm inviting you to embark on an exhilarating adventure of running four times a week! Let's rally together to keep each other motivated and committed every step of the way. We've got this!")
            
            HStack {
                ChallengeDuration(icone: "hourglass", text: "120 Days")
                ChallengeDuration(icone: "alarm", text: "Starts in 3 days")
            }.padding(.top, 20)
        } .padding(.leading, 20)
                .padding(.top, 20)
        Spacer()
    }.background(Color(red: 241/255, green: 208/255, blue: 189/255))
        VStack{
            Text("Let's do this !")
                .font(.custom("BebasNeue-Regular", size: 30))
            Button("Join the challenge") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.font(.custom("BebasNeue-Regular", size: 45))
                .foregroundColor(.black)
                .padding()
                .frame(width: 390, height: 70)  // Set a height to the button for a better appearance
                .background(Color.orange)
                .cornerRadius(10)
        }.padding(.top, 13)
    }
}

#Preview {
    ChallengeDescription()
}

struct ChallengeDuration: View {
    
    var icone: String
    var text: String
    
    var body: some View {
        HStack{
            Image(systemName: icone)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text(text)
                .font(.custom("BebasNeue", size: 26))
        }.padding(10)
            .background(Color.orange)
            .cornerRadius(30)
    }
}
