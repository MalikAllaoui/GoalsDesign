//
//  ChallengeTracking.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 19/05/2024.
//

import SwiftUI

struct ChallengeTracking: View {
    var body: some View {
                   // Stack for the profile name
                   VStack(alignment: .leading) { // Align the text to the leading edge
                       Text("Malik")
                           .font(.custom("Roboto-Bold", size: 22))
                           .foregroundColor(.black)
                           .padding(.leading, 60)
                            
                       
                       Spacer().frame(height: 1) // Spacer for spacing
                       
                       // Stack to display the profile image and ChallengeTest
                       HStack {
                           Image("MalikPhoto") // Assuming you have "MalikPhoto" in your Assets
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 70, height: 70)
                               .clipShape(Circle()) // Clip the image into a circle
                               .overlay(
                                   Circle()
                                       .stroke(Color.blue, lineWidth: 5)
                               )
                               .overlay(
                                                           Circle()
                                                               .stroke(Color.white, lineWidth: 3)
                                                       )
                                                       
                           
                           Spacer().frame(width: 5) // Spacer for spacing
                           
                           ChallengeTest()
                       }
                   }
                   .padding()
                   .background(Color.white)
    }
}

#Preview {
    ChallengeTracking()
}
