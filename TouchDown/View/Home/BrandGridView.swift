//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing) {
                ForEach(brands){brand in
                    BrandItemView(brand: brand)
                }
            }//: GRID
            .frame(height: 200)
            .padding(15)
        }//: SCROLL
        
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
