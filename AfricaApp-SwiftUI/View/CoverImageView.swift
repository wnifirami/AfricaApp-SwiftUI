//
//  CoverImageView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 24/1/2021.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Proprties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }// :Foreach
        }// :Tab
        .tabViewStyle(PageTabViewStyle())

    }
}

// MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
