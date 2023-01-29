//
//  HexagonParameters.swift
//  AwardsCollectionApp
//
//  Created by Илья Морин on 29.01.2023.
//


import CoreGraphics
import SwiftUI

struct NFTShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width: CGFloat = rect.width
            let height: CGFloat = rect.height
            
            path.move(
                to: CGPoint(
                    x: 0.2 * width,
                    y: 0 * height
                )
            )

            path.addLine(
                to: CGPoint(
                    x: 0.8 * width,
                    y: 0 * height)
            )

            path.addLine(
                to: CGPoint(
                    x: 1 * width,
                    y: 0.5 * height)
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0.8 * width,
                    y: 1 * height)
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0.2 * width,
                    y: 1 * height)
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0 * width,
                    y: 0.5 * height)
            )

            path.closeSubpath()
        }
    }
}
