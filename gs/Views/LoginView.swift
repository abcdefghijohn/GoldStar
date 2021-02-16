//
//  LoginView.swift
//  gs
//
//  Created by John Kim on 2/6/21.
//

import SwiftUI


struct LoginView: View {
//    @StateObject private var viewModel = LoginViewModel()
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        VStack(spacing: 15) {
            Image("placeholder").resizable().scaledToFit()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text("Welcome to GoldStar")
                .font(.system(size: 38, weight: .semibold)).foregroundColor(.black)
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email", text: $email)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("Password", text: $password)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            Button(action :{}) {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
                
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.black.opacity(0.8))
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
           
            Spacer()
            Spacer()
            Spacer()
            
            Text("No Account?")
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Sign Up")
            }
            

        
        }
       
            
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        LoginView()
            .previewDevice("iPhone 12")
        LoginView()
            .previewDevice("iPhone 11")
        LoginView()
            .previewDevice("iPhone 11 Pro Max")
        LoginView()
            .previewDevice("iPhone 12 Pro Max")
        }
    }
}
