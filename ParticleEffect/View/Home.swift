//
//  Home.swift
//  ParticleEffect
//
//  Created by Max Valek on 4/28/23.
//

import SwiftUI

struct Home: View {
    
    @State private var isLiked: [Bool] = [false, false, false]
    
    var body: some View {
        
        VStack {
            HStack(spacing: 20) {
                
                CustomButton(systemImage: "suit.heart.fill", status: isLiked[0], activeTint: .pink, inactiveTint: .gray) {
                    isLiked[0].toggle()
                }
                
                CustomButton(systemImage: "star.fill", status: isLiked[1], activeTint: .yellow, inactiveTint: .gray) {
                    isLiked[1].toggle()
                }
                
                CustomButton(systemImage: "paperplane.fill", status: isLiked[2], activeTint: .blue, inactiveTint: .gray) {
                    isLiked[2].toggle()
                }
            }
        }
    }
    
    // custom button
    @ViewBuilder
    func CustomButton(systemImage: String, status: Bool, activeTint: Color, inactiveTint: Color, onTap: @escaping () -> ()) -> some View {
        
        Button {
            onTap()
        } label: {
            Image(systemName: systemImage)
                .font(.title2)
                .particleEffect(
                    systemImage: systemImage,
                    font: .title2,
                    status: status,
                    activeTint: activeTint,
                    inactiveTint: inactiveTint)
                .foregroundColor(status ? activeTint : inactiveTint)
                .padding(.horizontal, 18)
                .padding(.vertical, 8)
                .background(
                    Capsule()
                        .fill(status ? activeTint.opacity(0.25) : Color("ButtonColor"))
                )
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            //.preferredColorScheme(.dark)
    }
}
