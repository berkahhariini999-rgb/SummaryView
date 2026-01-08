//
//  ProgressBadgeView.swift
//  SummaryView
//
//  Created by Iqbal Alhadad on 08/01/26.
//

import SwiftUI

struct ProgressBadgeView: View {
    let value: Double
    let maxValue: Double
    let title: String
    let color: Color
    private var progress: Double {
        min(value / maxValue, 1)
    }
    var body: some View {
        HStack(spacing: 7) {
            ProgressRing(progress: progress, color: color)
            Text("\(Int(value)) \(title)")
        }
        .font(.system(size: 17, weight: .medium, design: .rounded))
        .padding(.horizontal, 11).frame(height: 30)
        .background(
            Capsule()
                .fill(color.opacity(0.15))
                .overlay(content: {
                    Capsule().stroke(lineWidth: 1.2).foregroundStyle(.white)
                })
                .shadow(color: .black.opacity(0.3),radius: 10, x:0, y:3)
        )
    }
}


