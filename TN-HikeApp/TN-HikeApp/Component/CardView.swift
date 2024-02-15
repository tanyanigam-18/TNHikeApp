//
//  CardView.swift
//  TN-HikeApp
//
//  Created by singsys on 27/12/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
    //MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                 }
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color("ColorIndigoMedium"),
                                    Color("ColorSalmonLight")
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                //MARK: - FOOTER
                
                Button(action: {
                    // ACTION: Generate a random number
                },
                       label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,
                            x: 1,
                            y: 2
                        )
                })
                .padding(.vertical)
                .padding(.horizontal, 30)
                .background(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(40)
            }
        }
        // MARK: - CARD FRAME
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
