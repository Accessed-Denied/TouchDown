//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - PROPERTIES
    
    var sizes: [String] = ["XS","S","M","L","XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // RATING
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGraY)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5,id: \.self){item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGraY.cornerRadius(5))
                                .foregroundColor(.white)
                        }//: BUTTON
                    }
                }//: HSTACK
                
            }//: VSTACK
             Spacer()
            // SIZES
            VStack(alignment: .trailing, spacing: 3) {
               Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGraY)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes,id:\.self){size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGraY)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGraY,lineWidth: 1)
                                )
                        }

                    }
                }
            }//: VSTACK
            
        }//: HSTACK
    }
}

// MARK: - PREVIEW
struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
