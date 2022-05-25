//
//  RatingsSizesDetailsView.swift
//  Touchdown
//
//  Created by Pavan Shisode on 25/05/22.
//

import SwiftUI

struct RatingsSizesDetailsView: View {
    // MARK: - PRIORITIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGaray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGaray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .foregroundColor(colorGaray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGaray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGaray, lineWidth: 2)
                                )
                        })
                    }
                })
            })
        }) //: HSTACK
    }
}

// MARK: - PREVIEW
struct RatingsSizesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
