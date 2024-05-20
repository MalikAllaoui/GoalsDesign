//
//  GoalsFeed.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 20/05/2024.
//

import SwiftUI

struct GoalsFeed: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
        ]
    
    var body: some View {
        ScrollView{
            VStack{
                Text("Account")
                Image("MalikPhoto")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150) // Adjust the size as needed
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4) // White border
                            )
                            .shadow(radius: 10) // Shadow effect
                            .padding(10)
                Text("Malik Again").font(.custom("Roboto-Bold", size: 30))
                Text("@malikallaoui").font(.custom("Roboto-Medium", size: 16))
                HStack { // Memories and Statistics
                                Spacer()
                                HStack {
                                    Image(systemName: "photo.on.rectangle")
                                    Text("Memories")
                                        .font(.headline)
                                        .underline()
                                        .bold()
                                }
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                                Spacer()
                                HStack {
                                    Text("Progression")
                                        .font(.headline)
                                        .bold()
                                    Image(systemName: "chart.bar.fill")
                                }
                                .frame(maxWidth: .infinity)
                                .multilineTextAlignment(.center)
                                Spacer()
                            }
                            .padding(.vertical, 20)
                LazyVGrid(columns: columns, spacing: 40) {
                                ForEach(0..<9) { index in
                                    VStack {
                                                           Text("Challenge name")
                                            .font(.custom("Roboto-Medium", size: 15))
                                        ZStack(alignment: .bottomTrailing) {
                                                                    Image("running")
                                                                .resizable()
                                                                        .aspectRatio(contentMode: .fill)
                                                                        .frame(width: (UIScreen.main.bounds.width - 4) / 3, height: (UIScreen.main.bounds.width - 4) / 2)
                                                                        .clipped()
                                                                    Image(systemName: "play.fill")
                                                                        .foregroundColor(.white)
                                                                        .padding(5)
                                                                        .background(Color.black.opacity(0.7))
                                                                        .clipShape(Circle())
                                                                        .padding([.trailing, .bottom], 8)
                                                                }
                                                       }
                                }
                            }
                .padding(.horizontal, 0.1)
                        
                Spacer()
            }
        }
    }
}

#Preview {
    GoalsFeed()
}
