//
//  SettingsRowView.swift
//  Fruits
//
//  Created by yeomim Kim on 2022/11/10.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Text(name).foregroundColor(Color.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            } else {
                EmptyView()
            }
        }
    }
}


// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "john / jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUi Masterclass",
                        linkDestination: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
    }
}