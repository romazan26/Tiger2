//
//  NumberOfCopeysView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct NumberOfCopeysView: View {
    @Binding var numberOfCopeys: Int
    var body: some View {
        HStack {
            Text("Number of coples")
                .foregroundStyle(.black)
            Spacer()
            
            HStack {
                Button {
                    if numberOfCopeys > 1 {
                        numberOfCopeys -= 1
                    }
                } label: {
                    Image(systemName: "minus.square.fill")
                        .resizable()
                        .foregroundStyle(.black)
                        .frame(width: 40, height: 40)
                        
                }
                
                Text("\(numberOfCopeys)")
                    .foregroundStyle(.black)
                    .frame(width: 40, height: 40)
                
                Button {numberOfCopeys += 1
                } label: {
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .foregroundStyle(.black)
                        .frame(width: 40, height: 40)
                        
                }

            }
        }.padding()
    }
}

#Preview {
    NumberOfCopeysView(numberOfCopeys: .constant(5))
}
