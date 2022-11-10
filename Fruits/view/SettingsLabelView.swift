//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by yeomim Kim on 2022/11/10.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var labeText : String
    var labelImage: String

    var body: some View {
        HStack{
            Text(labeText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labeText: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
