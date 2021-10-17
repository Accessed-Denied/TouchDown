//
//  Constant.swift
//  TouchDown
//
//  Created by Rohit Saini on 16/10/21.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
 
// COLOR

let colorBackground = Color("ColorBackground")
let colorGraY = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem]{
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


// UX
// API
// IMAGE
// FONT
// STRING
// MISC
