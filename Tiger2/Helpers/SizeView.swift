//
//  SizeView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct SizeView: View {
    @Binding var size: String
    @Binding var orintation: Bool
    var body: some View {
        DisclosureGroup {
            VStack(spacing: 15){
                //MARK: Vertical
                VStack(alignment: .leading){
                    Text("Vertical")
                        .foregroundStyle(.black)
                        .font(.system(size: 10))
                    HStack {
                        ForEach(["10x10", "10x15", "15x20", "20x30", "30x45", "7x10"], id: \.self) { size in
                            Button {
                                self.size = size
                                orintation = false
                            } label: {
                                Text(size)
                                    .font(.system(size: 12))
                                    .frame(width: 44, height: 44)
                                    .background {
                                        Color(self.size == size && orintation == false ? .orange : .white)
                                            
                                            .opacity(self.size == size && orintation == false ? 0.15 : 1)
                                    }
                            }
                        }
                        Spacer()
                    }
                }
                
                //MARK: Horizontal
                VStack(alignment: .leading){
                    Text("Horizontal")
                        .foregroundStyle(.black)
                        .font(.system(size: 10))
                    HStack {
                        ForEach(["10x10", "10x15", "15x20", "20x30", "30x45", "7x10"], id: \.self) { size in
                            Button {
                                self.size = size
                                orintation = true
                            } label: {
                                Text(size)
                                    .font(.system(size: 12))
                                    .frame(width: 44, height: 44)
                                    .background {
                                        Color(self.size == size && orintation == true ? .orange : .white)
                                            
                                            .opacity(self.size == size && orintation == true ? 0.15 : 1)
                                    }
                            }
                        }
                        Spacer()
                    }
                }
            }.padding(.top, 5)
        } label: {
            HStack {
                Text("Size")
                Spacer()
            }
        }
        .foregroundStyle(.black)
        .padding()
        
    }
}

#Preview {
    SizeView(size: .constant("10x10"), orintation: .constant(false))
}
