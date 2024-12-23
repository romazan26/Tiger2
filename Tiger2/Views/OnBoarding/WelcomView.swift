//
//  WelcomView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct WelcomView: View {
    @StateObject var vm: IntroViewModel
    @FocusState var isFocused: Bool
    var body: some View {

        VStack(alignment: .leading, spacing: 10) {
                Text("Welcom!")
                    .foregroundStyle(.black)
                    .font(.system(size: 24, weight: .bold))
                Text("Enter your name and email address.")
                    .foregroundStyle(.black)
                    .font(.system(size: 14))
                
            TextField("Name", text: $vm.name)
                .focused($isFocused)
                    .padding(8)
                    .frame(height: 54)
                    .background {
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(.grayApp)
                    }
            TextField("e-mail", text: $vm.email)
                .focused($isFocused)
                    .padding(8)
                    .frame(height: 54)
                    .background {
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(.grayApp)
                    }
            }
        .onTapGesture {
            isFocused = false
        }
        .padding()
        
    }
}

#Preview {
    WelcomView(vm: IntroViewModel())
}
