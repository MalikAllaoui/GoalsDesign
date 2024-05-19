//
//  Test.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 16/05/2024.
//

import SwiftUI

import SwiftUI

struct ContentView1: View {
    var body: some View {
        ZStack {
            Color(red: 241/255, green: 208/255, blue: 189/255)
                .edgesIgnoringSafeArea(.all) // Ignorer la zone de sécurité
            
            VStack {
                Text("Take part on a new adventure")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("BebasNeue", size: 50))
                Spacer()
            }
            .padding()
        }// Ignorer la zone de sécurité pour le ZStack lui-même
    }
}

#Preview {
    ContentView1()
}

