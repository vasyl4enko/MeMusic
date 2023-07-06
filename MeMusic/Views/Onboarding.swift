//
//  Onboarding.swift
//  MeMusic
//
//  Created by Oleksandr on 06.07.2023.
//

import SwiftUI

struct Onboarding: View {
    @State private var currentIndex = 0
    private let pageCount = 1
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                OnboardingImage(tag: 0)
                    .tag(0)
                    .ignoresSafeArea()
//                OnboardingImage(tag: 1)
//                    .tag(1)
//                OnboardingImage(tag: 2)
//                    .tag(2)
//                    .tabViewStyle(.page(indexDisplayMode: .never))
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea(edges:[.top,.bottom])

            CustomPageIndicator(currentIndex: currentIndex, pageCount: pageCount)

            Text("Enjoy your favorite music")
                
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna")
                .multilineTextAlignment(.center)
            Spacer()
        }
        
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

struct CustomPageIndicator: View {
    var currentIndex: Int
    let pageCount: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<pageCount, id:\.self) { index in
                Circle()
                    .foregroundColor(index == currentIndex ? .primary : .gray)
                    .frame(width: 10, height: 10)
            }
        }
    }
}

