//
//  OnboardingImage.swift
//  MeMusic
//
//  Created by Oleksandr on 06.07.2023.
//

import SwiftUI

struct OnboardingImage: View {
    var tag: Int
    var body: some View {
            Image("onboarding_\(tag)")
                .resizable()
                .aspectRatio(contentMode: .fit)
    }
}

struct OnboardingImage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingImage(tag: 1)
    }
}
