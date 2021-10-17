//
//  SectionView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    var name: String
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing:0){
            Spacer()
            Text(name.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90: -90 ))
            Spacer()
        }//: VSTACK
        .background(colorGraY.cornerRadius(12))
        .frame(width: 85)
        
    }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true, name: "")
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
