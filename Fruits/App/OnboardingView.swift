//
//  OnBoardingView.switf.swift
//  Fruts
//
//  Created by yeomim Kim on 2022/11/09.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK : - PROPERTIES
    
    var fruits : [Fruit] = fruitsData
    
    // MARK : - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
//                FruitCardView()
                Text("Cards")
            }//: LOOP
        } // : TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK : - PREVIEW

struct OnBoardingView_switf_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
