//
//  CenterModifier.swift
//  AfricaApp-SwiftUI
//
//  Created by Mac Pro Sam on 4/11/21.
//

import SwiftUI

struct CustomMofifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
