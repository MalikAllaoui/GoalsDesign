//
//  ChallengeTest.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 19/05/2024.
//

import SwiftUI

struct ChallengeTest: View {
    var body: some View {
        VStack {
                    // ZStack to overlay the circles and the connecting rectangle
                    ZStack {
                        
                        // Rectangle to connect the circles
                        HStack(spacing: 0) {
                            ForEach(1..<4) { _ in
                                Spacer()
                                Rectangle()
                                    .frame(height: 15)
                                    .foregroundColor(.blue)
                                    .padding(.bottom, 15)
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                        
                        // Horizontal stack for the circles and day labels
                        HStack(spacing: 0) {
                            ForEach(1..<5) { day in
                                VStack {
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.blue, lineWidth: 2)
                                        )
                                    
                                    Text("Day \(day)")
                                        .font(.caption)
                                        .foregroundColor(.black)
                                }
                                if day != 4 {
                                    Spacer()
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                    }
                    .frame(width: 280, height: 70)
                }
                .edgesIgnoringSafeArea(.all)
        }
}

#Preview {
    ChallengeTest()
}
