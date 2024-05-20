//
//  LaunchScreenGoals.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 20/05/2024.
//

import SwiftUI

struct LaunchScreenGoals: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 1, green: 0.250980407, blue: 0.09019608051, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            Text("GOALS").shadow(radius: 30)
                            .font(.custom("LeagueSpartan-Black", size: 75)) // Adjust the size as needed
                            .fontWeight(.bold) // Optional: add bold font weight
                            .foregroundColor(.white)
        }
        
    }
}

#Preview {
    LaunchScreenGoals()
}
