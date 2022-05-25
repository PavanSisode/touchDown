//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Pavan Shisode on 24/05/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
