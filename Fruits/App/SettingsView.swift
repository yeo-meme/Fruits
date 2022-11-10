//
//  SettingsView.swift
//  Fruits
//
//  Created by yeomim Kim on 2022/11/10.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    // MARK: - PROPERTIES
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            HStack{
                                Text("Fruits".uppercased()).fontWeight(.bold)
                                Spacer()
                                Image(systemName: "info.circle")
                            }
                    )
                    {
                        Text("hello")
                    }
                        // MARK: - SECTION 2
                        
                        // MARK: - SECTION 3
                }//VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLL
            }//: NAVIGATION
        }
    }


// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
