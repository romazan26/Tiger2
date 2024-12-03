//
//  IntroViewModel.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

struct User: Codable {
    var name: String
    var email: String
    var entityUser: Bool
    
}

import SwiftUI

final class IntroViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var entityUser: Bool = false
    
    @Published  var isPresented = false
    @Published  var pageIndex = 0
    @Published var pages: [PageIntro] = PageIntro.sampalePages
    
    @Published var user: User? {
           didSet {
               saveUser()
           }
       }
    
    @AppStorage("isFirstLaunch") private var isFirstLaunch: Bool?
    
    func nextPage() {
        pageIndex += 1
        if pageIndex > 4 {
            isPresented = true
            if isFirstLaunch ?? true{
                isFirstLaunch = false
            }
        }
    }
    
    //MARK: - User Default
       private func saveUser() {
           guard let user = user else { return }
           
           if let encodedUser = try? JSONEncoder().encode(user) {
               UserDefaults.standard.set(encodedUser, forKey: "user")
           }
       }
       
        func loadUser() {
           if let savedUserData = UserDefaults.standard.data(forKey: "user"),
              let decodedUser = try? JSONDecoder().decode(User.self, from: savedUserData) {
               user = decodedUser
               name = user?.name ?? ""
               email = user?.email ?? ""
               entityUser = user?.entityUser ?? false
           }
       }
       
    func updateUser() {
        user = User(name: name, email: email, entityUser: entityUser)
    }
}
