//
//  CreditsView.swift
//  AfricaApp-SwiftUI
//
//  Created by Mac Pro Sam on 4/11/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Rami Ounifi
    All rights reserved
    Better apps ♡ less code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }// Vstack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
    }
}
