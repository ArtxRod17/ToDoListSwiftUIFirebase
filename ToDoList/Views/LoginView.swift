//
//  LoginView.swift
//  ToDoList
//
//  Created by Arturo Rodriguez on 6/30/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .red)
                
                //Login Form
                Form {
                    //Error Code
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", background: .blue) {
                        //Attempt Login
                        viewModel.login()
                    }

                }
                .offset(y: -50)
                
                //Create Account
                VStack {
                    Text("New Around Here?")
                    NavigationLink(destination: RegisterView()) {
                        Text("Create an account")
                    }
                }
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
