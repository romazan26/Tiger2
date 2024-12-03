//
//  AddOrderView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct AddOrderView: View {
    @StateObject var vm: MainViewModel
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
                    .frame(minHeight: 54)
                    .padding()
                    .background {
                        Color.white.cornerRadius(8)
                    }
                
                
                //MARK: - Group of buttons
                HStack{
                    CustomButtonView(color: .black , label: "Add Photo")
                    CustomButtonView(label: "Send")
                }
                Spacer()
            }
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
