//
//  ContentView.swift
//  SummaryView
//
//  Created by Iqbal Alhadad on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        VStack {
            InlineFlow(horizontalSpacing: 4, verticalSpacing: 4) {
                Text("Your active energy today is at") // line 1
                    .blurFromBottom(show, delay: 0.4)
                ProgressBadgeView(value: 199, maxValue: 500, title: "kCal", color: .red) // line 2
                    .blurFromBottom(show, delay: 0.5)
                Text(", and you have")
                    .blurFromBottom(show, delay: 0.6)
                Text("exercised for") // line 3
                    .blurFromBottom(show, delay: 0.7)
                ProgressBadgeView(value: 40, maxValue: 100, title: "min", color: .mint) // line 3
                    .blurFromBottom(show, delay: 0.8)
                Text("Your")
                    .blurFromBottom(show, delay: 0.9)
                Text("recovery score is") // line 4
                    .blurFromBottom(show, delay: 1.0)
                ProgressBadgeView(value: 66, maxValue: 100, title: "", color: .orange)
                    .blurFromBottom(show, delay: 1.1)
                Text(".The")
                    .blurFromBottom(show, delay: 1.2)
                Text("scurrent temperature is") // line 5
                    .blurFromBottom(show, delay: 1.3)
                CapsuleInfo(icon: "thermometer", text: "16°C", color: .blue)
                    .blurFromBottom(show, delay: 1.4)
                Text("With") // line 6
                    .blurFromBottom(show, delay: 1.5)
                CapsuleInfo(icon: "sun.max.fill", text: "Clear", color: .blue)
                .blurFromBottom(show, delay: 1.6)
                Text(".")
                    .blurFromBottom(show, delay: 1.7)
            }.font(.system(size: 19,weight: .regular, design: .rounded))
                .padding(.trailing,90).onAppear {
                    show = true
                }
        }
        HStack {
            Image(systemName: "hand.thumbsup")
                .scaleEffect(-1)
            Image(systemName: "hand.thumbsup")
            Spacer()
        }.foregroundStyle(.gray).font(.title2)
            .blurFromBottom(show, delay: 1.8).padding(.top)
    }
}

#Preview {
    ContentView()
}
