//
//  TypeOrderEnum.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//
import Foundation

enum TypeOrder: String, Codable {
    case photo
    case posters
    case caledars
    case interior
    case presents
    case certificates
    case postcards
    
    var text: String {
        switch self {
            
        case .photo:
            "Photo printing service offers high-quality prints of your digital photos on various types of paper, including glossy, matte, and premium options. We provide fast turnaround times and ensure vibrant colors and sharp details in every print. "
        case .posters:
            "We offer high-quality poster printing services for various purposes such as advertising, events, exhibitions, and personal use. Our state-of-the-art equipment ensures vibrant colors and sharp details on a wide range of paper types and sizes. Choose from standard or custom dimensions to suit your needs."
        case .caledars:
            "Create unique, personalized calendars featuring your cherished memories. Our custom photo calendar printing service allows you to design each month with your favorite photos, making it an ideal gift for family, friends, or colleagues. Choose from various formats, including wall calendars and desk calendars, and customize them with special dates and notes."
        case .interior:
            "We specialize in transforming your favorite photographs into stunning wall art that enhances the ambience of any room. Choose from a variety of finishes, including matte, glossy, and canvas, to match your decor style. Our expert team ensures accurate color reproduction and exceptional print quality. "
        case .presents:
            ""
        case .certificates:
            ""
        case .postcards:
            "Easily turn your favorite photos into beautiful postcards! Our high-quality printing service ensures vibrant colors and sharp details. Choose from a variety of cardstock options to make your memories last. Perfect for sending greetings or preserving special moments. Order now and create unique, personalized postcards that will bring joy to your loved ones."
        }
    }
    
    var image: [ImageResource] {
        switch self {
            
        case .photo:
            [.photo1,.photo2,.photo3]
        case .posters:
            [.post1,.post2,.post3]
        case .caledars:
            [.calendar1,.calendar2,.calendar3]
        case .interior:
            [.inter1,.inter2,.inter3]
        case .presents:
            []
        case .certificates:
            []
        case .postcards:
            [.poster1,.poster2,.poster3]
        }
    }
    
    var name: String {
        switch self {
            
        case .photo:
            "Photo"
        case .posters:
            "Posters"
        case .caledars:
            "Caledars"
        case .interior:
            "Interior"
        case .presents:
            "Presents"
        case .certificates:
            "Certificates"
        case .postcards:
            "Postcards"
        }
    }
}
