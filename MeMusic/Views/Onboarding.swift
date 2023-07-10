//
//  Onboarding.swift
//  MeMusic
//
//  Created by Oleksandr on 06.07.2023.
//

import SwiftUI

struct Onboarding: View {
    @State private var currentIndex = 0
    @State private var onboarding:[OnboardingImage] = []
    private let pageCount = 1
    var body: some View {
        VStack {
            Carousel(index: $currentIndex, items: onboarding) { item in
                GeometryReader { proxy in
                    let size = proxy.size
                    
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: size.width)
                }
            }
            
            Spacer()
        }
        .background(Color.red)
        .onAppear {
            for index in 0...2 {
                onboarding.append(OnboardingImage(imageName: "onboarding_\(index)"))
            }
        }
        .ignoresSafeArea()
        
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

