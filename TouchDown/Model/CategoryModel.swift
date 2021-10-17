//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import Foundation

struct Category:Codable,Identifiable{
    let id: Int
    let name:String
    let image: String
}

