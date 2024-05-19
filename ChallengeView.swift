//
//  ChallengeView.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 19/05/2024.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        VStack (spacing: 15){
            ZStack{
                Rectangle().frame(maxWidth: .infinity)
                    .frame(height: 70)
                    .foregroundColor(Color(red: 65/255, green: 65/255, blue: 65/255))
                    .edgesIgnoringSafeArea(.top)
                Rectangle().frame(maxWidth: .infinity)
                    .frame(height: 70)
                    .foregroundColor(Color(red: 65/255, green: 65/255, blue: 65/255))
                HStack {
                                Text("RUN WITH ME")
                                    .font(.custom("BebasNeue-Regular", size: 50))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                .padding(.leading)
            }
            HStack {
                            Text("DAY 1")
                                .font(.custom("BebasNeue-Regular", size: 63))
                                .foregroundColor(.black)
                            Spacer()
                        }.padding(.leading)
            VStack (spacing: 25){
                ChallengeTracking()
                ChallengeTracking()
                ChallengeTracking()
            }
            Buttons().padding(.top, 10)
            
            Spacer()
        }.background(Color(red: 241/255, green: 208/255, blue: 189/255))
    }
}

#Preview {
    ChallengeView()
}
