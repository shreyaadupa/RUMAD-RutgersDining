//
//  ContentView.swift
//  RutgersDining
//
//  Created by Shreya Adupa on 3/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.red, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack{
                
                Text("RUTGERS DINING")//mid screen
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                                
                
            }
            
            
            
        }
        

            
              
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
