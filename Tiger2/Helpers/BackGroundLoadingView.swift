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
                .frame(width: 473, height: 612)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackGroundLoadingView()
}
