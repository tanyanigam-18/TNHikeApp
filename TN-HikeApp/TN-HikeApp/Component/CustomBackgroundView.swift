//
//  CustomBackgroundView.swift
//  TN-HikeApp
//
//  Created by singsys on 27/12/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - DEPTH
            
            Color(Color.customGreenDark)
                .cornerRadius(40)
                .offset(y: 12)
            
            //MARK: - LIGHT
            
            Color(Color.customGreenLight)
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            //MARK: - SURFACE
            
            LinearGradient(
                colors: [
                    Color(Color.customGreenLight),
                    Color(Color.customGreenMedium)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
