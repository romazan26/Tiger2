//
//  MainViewModel.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//
import Foundation

final class MainViewModel: ObservableObject {
    @Published var simpleOrderType: TypeOrder = .photo
    @Published var simplePaperMaterial: Bool = false
    @Published var simpleSize: String = "10x10"
    @Published var simpleCopyCount: Int = 1
    @Published var simpleDescription: String = ""
    @Published var simpleOrientation: Bool = false
}
