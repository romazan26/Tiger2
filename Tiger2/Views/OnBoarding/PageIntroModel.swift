//
//  PageIntroModel.swift
//  AircraftInspection
//
//  Created by Роман on 05.04.2024.
//

import Foundation

struct PageIntro: Identifiable,Equatable {
    let id = UUID()
    var imageUrl: String
    var text: String
    var tag: Int

    static var samplePage = PageIntro(imageUrl: "intro1", text: "For what purposes do you want to print photos?", tag: 0)
    
    static var sampalePages: [PageIntro] = [
        PageIntro(imageUrl: "intro1", text: "For what purposes do you want to print photos?", tag: 2),
        PageIntro(imageUrl: "intro2", text: "Create photos as birthday gifts!", tag: 3),
        PageIntro(imageUrl: "intro3", text: "You can create photos with captions for friends!", tag: 4)
    ]
}
