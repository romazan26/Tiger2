//
//  EntityUserview.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct EntityUserview: View {
    @StateObject var vm: IntroViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Are you an individual or a legal entity?")
                .foregroundStyle(.black)
                .font(.system(size: 24, weight: .bold))
            
            HStack(spacing: 30){
                Button {
                    vm.entityUser = false
                } label: {
                    HStack{
                        ZStack {
                            Circle()
                                .frame(height: 24)
                                .foregroundStyle(.grayApp)
                            if !vm.entityUser {
                                Circle()
                                    .frame(height: 14)
                                    .foregroundStyle(.orangeApp)
                            }
                        }
                        Text("Individual")
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    vm.entityUser = true
                } label: {
                    HStack{
                        ZStack {
                            Circle()
                                .frame(height: 24)
                                .foregroundStyle(.grayApp)
                            if vm.entityUser {
                                Circle()
                                    .frame(height: 14)
                                    .foregroundStyle(.orangeApp)
                            }
                        }
                        Text("Legal")
                            .foregroundStyle(.black)
                    }
                }
                Spacer()
            }
            
        }
        .padding()
        .onDisappear {
            vm.updateUser()
        }
    }
}

#Preview {
    EntityUserview(vm: IntroViewModel())
}
