//
//  PageIntroView.swift
//  AircraftInspection
//
//  Created by Роман on 05.04.2024.
//

import SwiftUI

struct PageIntroView: View {
    var page: PageIntro
    
    var body: some View {

        VStack {
            Image(page.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
            
                Text(page.text)
                .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
            
        }.padding()
                        
 
    }
}


#Preview {
    PageIntroView(page: PageIntro.samplePage)
}
