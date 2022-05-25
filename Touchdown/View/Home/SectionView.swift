//
//  SectionView.swift
//  Touchdown
//
//  Created by Pavan Shisode on 24/05/22.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockWise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        } //: VSTACK
        .background(colorGaray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
