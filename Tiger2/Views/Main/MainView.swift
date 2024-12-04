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
                    //MARK: - User name
                    HStack {
                        Text(vm.user?.name ?? "no user name")
                            .foregroundStyle(.black)
                            .font(.headline)
                        
                        Spacer()
                        
                        NavigationLink {
                            MyOrdersView(vm: vm)
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
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .caledars
                                    }
                                } label: {
                                    Image(.caledradrsButton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .interior
                                    }
                                } label: {
                                    Image(.interiorButton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .presents
                                    }
                                } label: {
                                    Image(.presentsbutton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .certificates
                                    }
                                } label: {
                                    Image(.certificatesButton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .postcards
                                    }
                                } label: {
                                    Image(.postcardsButton)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
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
