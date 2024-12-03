//
//  ContentView.swift
//  DreamHome Designer
//
//  Created by Роман on 19.11.2024.
//

import SwiftUI

struct LoadingView: View {
    @StateObject var vm = LoadingViewModel()
    var body: some View {
        ZStack {
            BackGroundLoadingView()
            
            VStack{
                Image(.imageLoading)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 40)
                
                Image(.logo)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                RectengelProgressView(progress: vm.timeLoading)
            }
        }
            .fullScreenCover(isPresented: $vm.isPresent, content: {
                if vm.isFirstLaunch ?? true {
                    IntroView()
                }else{
                    MainView()
                }
            })
            .onAppear(perform: {
                 vm.starttimer()
            })
        
    }
}

#Preview {
    LoadingView()
}
