//
//  InsetFactView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 31/1/2021.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Proprties
    
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }// Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
          
        }//: Box
    }
}

// MARK: - Preview

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
