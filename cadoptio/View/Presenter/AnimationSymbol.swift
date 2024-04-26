//
//  AnimationSymbol.swift
//  cadoptio
//
//  Created by Stefan Agusto Hutapea on 25/04/24.
//

import SwiftUI

struct AnimationSymbol: View {
    @State var isAnimated = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .foregroundColor(.red)
            .scaledToFit()
            .padding()
            .onTapGesture {
                isAnimated.toggle()
                
            }
            .symbolEffect(.pulse, options: .repeating, value: isAnimated)
    }
}

#Preview {
    AnimationSymbol()
}
