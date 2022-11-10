//
//  SettingsView.swift
//  Fruits
//
//  Created by yeomim Kim on 2022/11/10.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - PROPERTIES
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                Text("hello")
                }//VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .padding()
            }
            }
        }
    }


// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
