//
//  Home.swift
//  MeMusic
//
//  Created by Oleksandr on 11.07.2023.
//

import SwiftUI

struct Home: View {
    @State private var genres = [Genre]
    var body: some View {
        VStack {
            HStack {
                Text("Popular album")
                Spacer()
                Text("View all")
            }
            .padding(.horizontal, 18)
            Spacer()
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
