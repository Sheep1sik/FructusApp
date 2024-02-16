//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by 양원식 on 2024/02/16.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var lableImage: String
    
    // MARK: - BODY

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
