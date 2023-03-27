//
//  MealView.swift
//  RutgersDining
//
//  Created by Rick
//

import SwiftUI

struct MealView: View {
    @State private var selectedMeal = -1
    let meals = ["Breakfast", "Lunch", "Dinner"]

    var body: some View {
        NavigationView {
            VStack {
                List(meals.indices, id: \.self) { index in
                    Button(action: {
                        selectedMeal = index
                    }) {
                        HStack {
                            Text(meals[index])
                                .font(.system(size: 24))
                                .foregroundColor(.primary)

                            Spacer()

                            if selectedMeal == index {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    .listRowBackground(Color.clear)
                }
                Spacer()
            }
            .navigationBarTitle("Meal", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        // Add your back button action here
                    }) {
                        Text("Back")
                    },
                trailing:
                    Button(action: {
                        // Add your next button action here
                    }) {
                        Text("Next")
                    }
            )
        }
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
