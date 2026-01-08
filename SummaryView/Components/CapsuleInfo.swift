//
//  CapsuleInfo.swift
//  SummaryView
//
//  Created by Iqbal Alhadad on 08/01/26.
//

import SwiftUI

struct CapsuleInfo: View {
    let icon: String
    let text: String
    let color: Color
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: icon).resizable().scaledToFit()
                .foregroundStyle(color)
                .frame(width: 15,height: 17)
            Text(text)
        }
        .font(.system(size: 17, weight: .medium, design: .rounded))
        .padding(.horizontal,11)
        .frame(height: 30)
        .background(
            Capsule()
                .fill(color.opacity(0.15))
                .overlay(content: {
                    Capsule().stroke(lineWidth: 1.2)
                        .foregroundStyle(.white)
                })
                .shadow(color: .black.opacity(0.2),radius: 10, x:0, y: 0)
                .shadow(color: .black.opacity(0.2),radius: 10, x:0, y: 11)
        )
    }
}

