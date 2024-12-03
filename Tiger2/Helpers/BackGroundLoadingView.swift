//
//  BackGroundLoadingView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct BackGroundLoadingView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.white
                
            Image(.vectorBaackLoading)
                .resizable()
                .frame(height: 612)
                .ignoresSafeArea()
        }
        //.ignoresSafeArea()
    }
}

#Preview {
    BackGroundLoadingView()
}
