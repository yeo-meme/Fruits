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
    var content: String
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Text("Developer").foregroundColor(Color.gray)
            Spacer()
            Text("john / jane")
        }
    }
}


// MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "")
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
