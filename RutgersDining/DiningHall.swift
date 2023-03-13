//
//  DiningHall.swift
//  RutgersDining
//
//  Created by Shreya Adupa on 3/12/23.
//

import SwiftUI

struct DiningHall: View {
    var body: some View {
        ScrollView
        {
            SelectItem()
        }
            .overlay(
                ZStack
                {
                    Color.clear
                        .background(.ultraThinMaterial)
                        .blur(radius: 10)
                    
                    Text("Dining Halls")
                        .font(.largeTitle.weight(.bold))
                }
                    .frame(width: 250, height: 50)
                .frame(maxHeight: .infinity, alignment: .top)
                
            )
        
    }
}

struct DiningHall_Previews: PreviewProvider {
    static var previews: some View {
        DiningHall()
    }
}
