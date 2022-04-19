//
//  Categories.swift
//  Landmarks
//
//  Created by Toan Thien on 18/04/2022.
//

import SwiftUI

struct Categories: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(10)
                    .listRowInsets(EdgeInsets())
                
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")

        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
            .environmentObject(ModelData())
    }
}
