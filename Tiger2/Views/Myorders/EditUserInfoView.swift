//
//  EditUserInfoView.swift
//  Tiger2
//
//  Created by Роман on 04.12.2024.
//

import SwiftUI

struct EditUserInfoView: View {
    @StateObject var vm: MainViewModel
    @FocusState var isFocused: Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
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
            Button {
                vm.updateUser()
                dismiss()
            } label: {
                CustomButtonView(label: "Save")
            }

            Spacer()
        }
        .padding()
        .onTapGesture {
            isFocused = false
        }
    }
}

#Preview {
    EditUserInfoView(vm: MainViewModel())
}
