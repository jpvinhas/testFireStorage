//
//  AuthManager.swift
//  testFireStorage
//
//  Created by João Pedro Borges on 25/07/24.
//

import FirebaseAuth

class AuthManager: ObservableObject {
    static let shared = AuthManager()

    @Published var isAuthenticated: Bool = false
    @Published var userId: String?

    private init() {
        print("init Auth Manager")
        self.isAuthenticated = Auth.auth().currentUser != nil
        self.userId = Auth.auth().currentUser?.uid
        Auth.auth().addStateDidChangeListener { _, user in
            self.isAuthenticated = user != nil
            self.userId = user?.uid
        }
    }
    
    func signOut() {
        do {
            print("saindo")
            try Auth.auth().signOut()
            self.isAuthenticated = false
            self.userId = nil
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
