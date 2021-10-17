//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false, name: "Categories"),
                    footer: SectionView(rotateClockwise: true, name: "Categories")
                ) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            }//: GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            
        }//: SCROLL
    }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
