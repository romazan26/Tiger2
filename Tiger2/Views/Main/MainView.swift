//
//  MainView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                VStack {
                    //MARK: - Search
                    HStack {
                        TextField("Search", text: .constant(""))
                            .padding(8)
                            .frame(height: 54)
                            .background {
                                RoundedRectangle(cornerRadius: 6)
                                    .foregroundStyle(.grayApp)
                            }
                        
                        NavigationLink {
                            ////
                        } label: {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.black)
                        }

                    }
                    ScrollView {
                        VStack{
                            NavigationLink {
                                AddOrderView(vm: vm).onAppear {
                                    vm.simpleOrderType = .photo
                                }
                            } label: {
                                Image(.photobutton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }

                            LazyVGrid(columns: [GridItem(), GridItem()]) {
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .posters
                                    }
                                } label: {
                                    Image(.postersButton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                Image(.caledradrsButton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image(.interiorButton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image(.presentsbutton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image(.certificatesButton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Image(.postersButton)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                            Image(.hightQuality)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    MainView()
}
