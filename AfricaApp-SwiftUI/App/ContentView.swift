//
//  ContentView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 24/1/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Proprties
     let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { item in
                    NavigationLink(destination: AnimalDtailView(animal: item)) {
                        AnimalListItemView(animal: item)
                    }// Link
                }// Loop
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)

        }//: Navigation
    }
}
// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
