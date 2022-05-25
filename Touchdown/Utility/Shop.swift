//
//  Shop.swift
//  Touchdown
//
//  Created by Pavan Shisode on 25/05/22.
//

import Foundation
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
