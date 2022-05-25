//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Pavan Shisode on 25/05/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
        
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
