//
//  ExternalWebLinkView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 31/1/2021.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - Proprties
    
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikepedia.org"))!)
                    Image(systemName: "arrow.up.right.square")

                }//: Group
                .foregroundColor(.accentColor)
            }//: Hstack
        }//Group
    }
}

// MARK: - Preview
struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
