//
//  PaperMaterialView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct PaperMaterialView: View {
    @State private var isPaperMaterialExpanded = false
    @Binding var selectedPaperMaterial: Bool

       var body: some View {

               DisclosureGroup(
                   isExpanded: $isPaperMaterialExpanded,
                   content: {
                       
                           VStack( spacing: 10) {
                               Button {
                                   selectedPaperMaterial = false
                               } label: {
                                   HStack{
                                       ZStack {
                                           Circle()
                                               .frame(height: 24)
                                               .foregroundStyle(.white)
                                           if !selectedPaperMaterial {
                                               Circle()
                                                   .frame(height: 14)
                                                   .foregroundStyle(.orangeApp)
                                           }
                                       }
                                       Text("Matte")
                                           .foregroundStyle(.black)
                                       Spacer()
                                   }
                               }
                               
                               
                               Button {
                                   selectedPaperMaterial = true
                               } label: {
                                   HStack{
                                       ZStack {
                                           Circle()
                                               .frame(height: 24)
                                               .foregroundStyle(.white)
                                           if selectedPaperMaterial {
                                               Circle()
                                                   .frame(height: 14)
                                                   .foregroundStyle(.orangeApp)
                                           }
                                       }
                                       Text("Glossy")
                                           .foregroundStyle(.black)
                                       Spacer()
                                   }
                               }
                               
                           }
                           .padding(.top)
                        
                   },
                   label: {
                       HStack {
                           Text("Paper material")
                           Spacer()
                       }
                   }
               )
               .foregroundStyle(.black)
               .padding()

    
       }
}

#Preview {
    PaperMaterialView(selectedPaperMaterial: .constant(false))
}
