//
//  ContentView.swift
//  FRUITS
//
//  Created by Selin Çağlar on 17.11.2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//:button
                    .sheet(isPresented: $isShowSettings){
                        SettingsView()
                    }

            )
        }//:navigation
        
    }
}

    //MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
