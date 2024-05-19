//
//  Buttons.swift
//  GoalsDesign
//
//  Created by Malik Allaoui on 19/05/2024.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        HStack{
            Button(action: {
                        // Action when the button is tapped
                        // You can add code here to handle taking a picture
                    }) {
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .font(.title)
                            
                            Text("I DID IT!")
                                .font(.custom("BebasNeue-Regular", size: 35))
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(height: 90)
                        .background(Color.green)// Set a height to the button for a better appearance
                        .background(Color.orange)
                        .cornerRadius(30)
                    }
                    .buttonStyle(PlainButtonStyle())
            Button(action: {
                        // Action when the button is tapped
                        // You can add code here to handle taking a picture
                    }) {
                        HStack {
                            Image(systemName: "camera.fill") // Adding the icon here
                                .font(.title)
                            
                            Text("Take a photo")
                                .font(.custom("BebasNeue-Regular", size: 35))
                                .foregroundColor(.black)
                        }
                        .padding()
                        .frame(height: 90)  // Set a height to the button for a better appearance
                        .background(Color.orange)
                        .cornerRadius(30)
                    }
                    .buttonStyle(PlainButtonStyle())
        }
        
            }
        }
    
#Preview {
    Buttons()
}
