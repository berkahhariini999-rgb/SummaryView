//
//  ProgressRing.swift
//  SummaryView
//
//  Created by Iqbal Alhadad on 08/01/26.
//

import SwiftUI

struct ProgressRing: View {
    let progress: Double
    let color: Color
    let size: CGFloat = 15
    let lineWidth: CGFloat = 3.5
    @State private var animatedProgress: Double = 0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.2), lineWidth: lineWidth)
            Circle()
                .trim(from: 0, to: animatedProgress)
                .stroke(color,style: StrokeStyle(lineWidth: lineWidth,lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
        .frame(width: size,height: size)
        .onAppear {
            withAnimation(.linear(duration: 3)) {
                animatedProgress = progress
            }
        }
    }
}


