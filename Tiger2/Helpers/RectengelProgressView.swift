//
//  RectengelProgressView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct RectengelProgressView: View {
    var progress: Int = 25
    var body: some View {
        VStack {
            Text("\(progress) %")
                .foregroundStyle(.black)
                .font(.system(size: 24, weight: .bold))
                
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 224, height: 6)
                    .foregroundStyle(.grayApp)
                    .cornerRadius(50)
                Rectangle()
                    .frame(width: getWith(), height: 6)
                    .foregroundStyle(.orangeApp)
                    .cornerRadius(50)
            }
        }
        
    }
    private func getWith() -> CGFloat {
        CGFloat(progress) / 100 * 224
    }
}

#Preview {
    RectengelProgressView()
}
