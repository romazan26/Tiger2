//
//  AddOrderView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct AddOrderView: View {
    @StateObject var vm: MainViewModel
    @FocusState var isFocused: Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack {
                //MARK: - PreView Photo
                TabView {
                    ForEach(vm.simpleOrderType.image, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .tabViewStyle(.page)
                .frame(height: 260)
                
                //MARK: - Text
                VStack(alignment: .leading, spacing: 10) {
                    Text(vm.simpleOrderType.name)
                        .foregroundStyle(.black)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(vm.simpleOrderType.text)
                        .foregroundStyle(.black)
                }
                
                //MARK: - Paper material
                PaperMaterialView(selectedPaperMaterial: $vm.simplePaperMaterial)
                
                //MARK: - Size
                SizeView(size: $vm.simpleSize, orintation: $vm.simpleOrientation)
                
                //MARK: - Number of copyes
                NumberOfCopeysView(numberOfCopeys: $vm.simpleCopyCount)
                
                //MARK: - Discription
                MultiLineTF(txt: $vm.simpleDescription, placehold: "Discription")
                    .focused($isFocused)
                    .frame(minHeight: 54)
                    .padding()
                    .background {
                        Color.white.cornerRadius(8)
                    }
                
                //MARK: - Choose photo
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(vm.simpleImages, id: \.self) { image in
                                Image(uiImage: image)
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(6)
                            }
                            if vm.chooseImages != UIImage(resource: .photo1) {
                                Image(uiImage: vm.chooseImages)
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(6)
                            }
                        }
                    }
                
                
                //MARK: - Group of buttons
                HStack{
                    //MARK: add photo button
                    Button {
                        vm.addNewPhoto()
                    } label: {
                        CustomButtonView(color: .black , label: "Add Photo")
                    }

                    //MARK: - Send button
                    Button {
                        dismiss()
                        vm.addOrder()
                    } label: {
                        CustomButtonView(label: "Send")
                    }
                }
                Spacer()
            }
            .onDisappear {
                vm.clearOrder()
            }
            .onTapGesture(perform: {
                isFocused = false
            })
            .sheet(isPresented: $vm.isPresentPhotoLibrary, content: {
                PhotoPicker(configuration: vm.config, pickerResult: $vm.chooseImages, isPresented: $vm.isPresentPhotoLibrary)
            })
            .padding(8)
            .background {
                Color.grayApp.cornerRadius(8)
            }
            .padding()
        }
    }
}

#Preview {
    AddOrderView(vm: MainViewModel())
}
