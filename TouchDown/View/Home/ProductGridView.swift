//
//  ProductGridView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout,spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product)
            }//: LOOP
        }//: GRID
        .padding(15)
        
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
