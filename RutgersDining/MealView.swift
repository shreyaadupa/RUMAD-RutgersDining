//
//  MealView.swift
//  RutgersDining
//
//  Created by Shreya Adupa on 3/12/23.
//

import SwiftUI

struct MealView: View {
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
                    
                    Text("Meals")
                        .font(.largeTitle.weight(.bold))
                }
                    .frame(width: 250, height: 50)
                .frame(maxHeight: .infinity, alignment: .top)
                
            )
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
