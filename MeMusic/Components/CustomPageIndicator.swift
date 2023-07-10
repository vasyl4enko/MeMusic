//
//  CustomPageIndicator.swift
//  MeMusic
//
//  Created by Oleksandr on 06.07.2023.
//

import SwiftUI

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

struct CustomPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CustomPageIndicator(currentIndex: 2, pageCount: 5)
    }
}
