//
//  Shop.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}


