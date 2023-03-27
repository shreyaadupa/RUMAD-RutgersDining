//
//  CalorieTrackerView.swift
//  RutgersDining
//
//  Created by Rick
//

import SwiftUI

struct CalorieTrackerView: View {
    @State private var calories: Int = 500
    let trackedFood = ["Item", "Item", "Item"] // Replace this array with your actual data

    var body: some View {
        NavigationView {
            VStack {
                Text("\(calories)")
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                    .padding(.bottom, 40)

                VStack(alignment: .leading) {
                    Text("Tracked food")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 8)

                    List {
                        ForEach(trackedFood, id: \.self) { item in
                            Text(item)
                                .font(.system(size: 20))
                        }
                    }
                }
                .padding(.horizontal)

                Spacer()
            }
            .navigationBarTitle("Calorie Tracker", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        // Add your back button action here
                    }) {
                        Text("Back")
                    }
            )
        }
    }
}

struct CalorieTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        CalorieTrackerView()
    }
}
