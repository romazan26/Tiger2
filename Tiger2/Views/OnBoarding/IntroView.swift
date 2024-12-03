//
//  IntroView.swift
//  FastTrack
//
//  Created by Роман on 12.08.2024.
//

import SwiftUI

struct IntroView: View {
    @StateObject var vm = IntroViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            BackGroundLoadingView()
                 
            VStack{
                switch vm.pageIndex {
                case 0: WelcomView(vm: vm)
                case 1: EntityUserview(vm: vm)
                
                default:
                    TabView(selection: $vm.pageIndex,
                            content:  {
                        ForEach(vm.pages) { page in
                            PageIntroView(page: page)
                                .tag(page.tag)
                            
                        }
                    })
                    
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                
                }
                    
                
                
                //MARK: - Navigation Button
                Button(action: {
                    vm.nextPage()
                }, label: {
                    CustomButtonView()
                    
                })
                .padding()
            }
            .animation(.easeInOut, value: vm.pageIndex)
            
            
        }
        .fullScreenCover(isPresented: $vm.isPresented, content: {
            MainView()
        })
    }
    
}

#Preview {
    IntroView()
}

