//
//  CardView.swift
//  RutgersDining
//
//  Created by Shreya Adupa on 3/14/23.
//

import SwiftUI

struct CardView: View {
    @State var selectedOption: Int = 0
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Choose a Dining Hall")
                .font(.headline)
                .padding(.top, 16)
            RadioButtonField(selectedOption: $selectedOption, options: ["Cook", "Douglass", "Busch", "Livingston", "College Avenue", "Food Trucks"])
                .padding(.horizontal, 16)
            Spacer()
        }
        .background(RoundedRectangle(cornerRadius: 16).fill(Color.white).shadow(radius: 4))
        .frame(width: 200, height: 200)
    }
}

struct RadioButtonField: View {
    @Binding var selectedOption: Int
    var options: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(0..<options.count) { index in
                RadioButton(selectedOption: $selectedOption, index: index, label: options[index])
            }
        }
    }
}

struct RadioButton: View {
    @Binding var selectedOption: Int
    var index: Int
    var label: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: selectedOption == index ? "largecircle.fill.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(selectedOption == index ? Color.blue : Color.gray)
                .onTapGesture {
                    selectedOption = index
                }
            Text(label)
                .foregroundColor(.primary)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
