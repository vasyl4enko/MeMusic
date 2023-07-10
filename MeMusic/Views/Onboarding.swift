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
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Text("Enjoy your favorite music")
                .foregroundColor(.black)
                .font(Font.custom("Poppins-Medium", size: 16))
                .multilineTextAlignment(.center)
                .padding(.top, 40)
                .padding(.bottom, 12)
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna")
                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.32))
                .font(Font.custom("Poppins-Regular", size: 14))
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
                .padding(.horizontal, 24)
            
            
            HStack (alignment: .center) {
                //                Spacer()
                HStack {
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                HStack(alignment: .center, spacing: 10.0) {
                    ForEach(onboarding.indices, id: \.self) {  index in
                        Rectangle()
                            .fill(LinearGradient(stops: [
                                Gradient.Stop(color: Color(red: 0.95, green: 0.36, blue: 0.31), location: 0.16),
                                Gradient.Stop(color: Color(red: 0.95, green: 0.73, blue: 0.47), location: 1.00),], startPoint: UnitPoint(x: 0.06, y: 0.91), endPoint: UnitPoint(x: 0.93, y: 0.08))
                                .opacity(currentIndex == index ? 1 : 0.5))
                            .frame(width: currentIndex == index ? 20 : 10, height: 10)
                            .cornerRadius(5)
                            .animation(.spring(), value: currentIndex)
                    }
                }
                .frame(maxWidth: .infinity)
                
                //                .padding(.top, 40)
                //                Spacer()
                HStack() {
                    Button {
                        
                    } label: {
                        Text("Start")
                            .foregroundColor(Color(red: 0.95, green: 0.36, blue: 0.31))
                            .multilineTextAlignment(.trailing)
                            .font(Font.custom("Poppins-Medium", size: 14))
                    }
                    .padding(.trailing, 24)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                
                
            }
        }
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

