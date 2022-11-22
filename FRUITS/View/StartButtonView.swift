//
//  StartButtonView.swift
//  FRUITS
//
//  Created by Selin Çağlar on 22.11.2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTY
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack (spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//:button
        .accentColor(Color.white)
    }
}



//MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
