//
//  ChallengeCard.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 17/05/2024.
//

import SwiftUI

struct ChallengeCard: View {
    var body: some View {
        VStack (spacing: 1){
                Text("Run with me")
                    .font(.custom("BebasNeue", size: 32))
                    .padding(.top, 15)
                Image("running")
                    .resizable()
                    .frame(width: 170, height: 120)
                HStack{
                    Text("Starting in")
                        .font(.custom("BebasNeue", size: 18))
                    Text("1 DAY")
                        .font(.custom("BebasNeue", size: 30))
                }
                HStack{
                    Image("MalikPhoto")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 1) // Add a white border
                        )
                    Text("By Malik Allaoui")
                        .font(.custom("BebasNeue", size: 13))
                }
            HStack {
                Text("76 participants")
                    .font(.custom("BebasNeue", size: 20))
                Image("MalikPhoto")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 1))
            }.padding(.top, 6)
            .padding(.bottom, 16)
        }.frame(width: 170)
            .background(Color.orange)
            .cornerRadius(15.0)
        Spacer()
    }
        
}

#Preview {
    ChallengeCard()
}
