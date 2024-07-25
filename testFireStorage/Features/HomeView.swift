//
//  HomeView.swift
//  testFireStorage
//
//  Created by João Pedro Borges on 25/07/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var userManager = UserManager.shared
    
    var body: some View {
        if userManager.user != nil {
            VStack{
                Text("ID: \(userManager.user?.id ?? "nil")")
                Text("NAME: \(userManager.user?.name ?? "nil")")
                Text("EMAIL: \(userManager.user?.email ?? "nil")")
                Text("ROLE: \(userManager.user?.role ?? "nil")")
                Button(action: {
                    AuthManager.shared.signOut()
                }, label: {
                    VStack{
                        Text("sair").foregroundStyle(Color.white).padding()
                    }.background(Color.gray).cornerRadius(18)
                })
            }
        }else {
            ProgressView()
                .frame(width: 100, height: 150, alignment: .center) 
        }
    }
}

#Preview {
    HomeView()
}
