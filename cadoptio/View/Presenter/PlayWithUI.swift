//
//  PlayWithUI.swift
//  cadoptio
//
//  Created by Stefan Agusto Hutapea on 25/04/24.
//

import SwiftUI

struct PlayWithUI: View {
    @State var numOfTapped: Int
    @State var circleOpacity: Double = 0.2
    
    var body: some View {
        Circle()
            .opacity(circleOpacity)
            
            .animation(.easeIn, value: numOfTapped)
            .onTapGesture {
                print("Circle is tapped")
                withAnimation(.easeIn){
                    numOfTapped += 1
                    circleOpacity = 1
                }
                print(numOfTapped)
            }
    }
}

#Preview {
    PlayWithUI(numOfTapped: 0)
}
