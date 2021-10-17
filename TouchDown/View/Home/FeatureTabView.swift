//
//  FeatureTabView.swift
//  TouchDown
//
//  Created by Rohit Saini on 17/10/21.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView{
            ForEach(players){ player in
                FeatureItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 250)
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
