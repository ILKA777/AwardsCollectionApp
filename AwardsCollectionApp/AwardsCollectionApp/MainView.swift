//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    @State private var nftIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                }
            }
            Button(action: buttonNFTAction) {
                HStack {
                    Text(nftIsShowing ? "Hide NFT" : "Show NFT")
                    Spacer()
                    Image(systemName: "hexagon.fill")
                        .scaleEffect(nftIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(nftIsShowing ? 0 : 540))
                }
            }
            if nftIsShowing {
                Spacer()
                CustomFigureView(name: "nft")
                    .frame(width: 200, height: 200)
                    .transition(.leadingSlide)
            }
            if awardIsShowing {
                Spacer()
                GradientRectangles()
                    .frame(width: 200, height: 200)
                    .transition(.leadingSlide)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
    private func buttonNFTAction() {
        withAnimation {
            nftIsShowing.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
