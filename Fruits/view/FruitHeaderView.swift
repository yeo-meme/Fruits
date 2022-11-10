//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by yeomim Kim on 2022/11/10.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimationImage : Bool = false
    
    //MARKL - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomLeading)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity:0.15) , radius: 8
                        , x: 6, y:8).padding(.vertical, 20)
                .padding(.vertical, 20)
                .scaleEffect(isAnimationImage ? 1.0:0.6)
        }//ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimationImage = true
            }
        }
    }
}

    //MARK: - PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
