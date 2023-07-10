//
//  Carousel.swift
//  MeMusic
//
//  Created by Oleksandr on 07.07.2023.
//

import SwiftUI
//https://www.youtube.com/watch?v=4Gw5lDXJ04g&t=617s
struct Carousel<Content: View, T: Identifiable >: View {
    var content: (T)->Content
    var list: [T]
    
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 0, trailingSpace: CGFloat = 0, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T)->Content ) {
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View {
            let width = UIScreen.main.bounds.width - (trailingSpace - spacing)
            HStack(spacing: 0) {
                ForEach(list) { item in
                    content(item)
                        .frame(width: UIScreen.main.bounds.width)
                }
            }
            .offset(x: (CGFloat(currentIndex-1) * -width) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
//                        print(proxy.size.height)

                        if (index == 0 && value.translation.width > 0) || (index == list.count - 1 && value.translation.width < 0)
                        {
                            return
                        }
                        out = value.translation.width
//                        print(value.translation.width)
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width
                        let roundedIndex = progress.rounded()
                        currentIndex = max(min(currentIndex + Int(roundedIndex), list.count - 1), 0)
                        currentIndex = index
                    })
                    .onChanged({ value in
                        let offsetX = value.translation.width
                        let progress = -offsetX / width
                        let roundedIndex = progress.rounded()
                        index = max(min(currentIndex + Int(roundedIndex), list.count - 1), 0)
                    })
            )
//        }
        .animation(.easeOut, value: offset == 0)
        .drawingGroup()
    }
}

//struct Carousel_Previews: PreviewProvider {
//    static var previews: some View {
//        Carousel<Content: View, T: Identifiable>()
//    }
//}
