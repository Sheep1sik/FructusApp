//
//  ContentView.swift
//  Fructus
//
//  Created by 양원식 on 2024/02/06.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical , 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEWS
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
