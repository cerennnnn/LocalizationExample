//
//  ContentView.swift
//  LocalizationExample
//
//  Created by Ceren Güneş on 27.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    let menu: [(String, [(String, String)])] = [
        ("Appetizers", [
            ("Garlic Bread", "5.99$"),
            ("Mozzarella Sticks", "8.99$"),
            ("Chicken Wings", "3$")
        ]),
        ("Main Courses", [
            ("Spaghetti Bolognese", "16.99$"),
            ("Grilled Chicken Sandwich", "11.99$"),
            ("Cheeseburger", "3$"),
            ("Meatballs with Mashed Potatoes", "14.99$")
        ]),
        ("Drinks", [
            ("Coke", "2.99$"),
            ("Fresh Lemonade", "3.99$"),
            ("Iced Tea", "2.99$"),
            ("Coffee", "2.99$")
        ]),
        ("Desserts", [
            ("Chocolate Cake", "7.99$"),
            ("Cheesecake", "8.99$"),
            ("Brownie", "10.99$")
        ])
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(menu, id: \.0) { section in
                        Section(header: Text(section.0).font(.headline)) {
                            ForEach(section.1, id: \.0) { item in
                                HStack {
                                    Text(item.0)
                                    
                                    Spacer()
                                    
                                    Text(item.1)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .padding(5)
            .scrollIndicators(.hidden)
            .navigationTitle("Menu")
        }
    }
}

#Preview {
    ContentView()
}
