//
//  InsetGalleryView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 31/1/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Proprties
    let animal: Animal
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }// Hstack
        }// : Scrollview
        

    }
}

// MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
