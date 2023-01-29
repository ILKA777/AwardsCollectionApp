//
//  CustomFigureView.swift
//  AwardsCollectionApp
//
//  Created by Илья Морин on 29.01.2023.
//

import SwiftUI

struct CustomFigureView: View {
    let name: String
    var body: some View {
        Image("nft")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(NFTShape())
    }
        
    
}


struct CustomFigureView_Previews: PreviewProvider {
    static var previews: some View {
        CustomFigureView(name: "nft")
            .frame(width: 200, height: 200)
            
    }
}
