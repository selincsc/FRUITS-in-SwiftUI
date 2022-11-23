//
//  OnboardingView.swift
//  FRUITS
//
//  Created by Selin Çağlar on 22.11.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTY
    
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitsCardView(fruit: item)
            }//:loop
        }//:tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}



//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
