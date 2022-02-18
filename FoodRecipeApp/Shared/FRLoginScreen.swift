//
//  FRLoginScreen.swift
//  FoodRecipeApp
//
//  Created by Dhivyabharathi Rathinakumar on 18/02/22.
//

import SwiftUI

struct FRLoginScreen: View {
    @State var userName = "userName@gmail.com"
    @State var password = "password"
    var body: some View {
        VStack {
            ScrollView {
                Image("Login")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.50)
                VStack(spacing: 0) {
                    VStack(alignment:.leading, spacing: 0) {
                        Text("Login")
                            .font(.poppins(size: kLoginFontSize))
                            .foregroundColor(.black)
                            .padding()
                        Text("EMAIL ADDRESS")
                            .font(.poppins(size: kHeadingFontSize))
                            .foregroundColor(.silver)
                            .padding()
                        TextField("", text: $userName)
                            .font(.poppins(size: kFontSize))
                            .foregroundColor(.arsenic)
                            .padding()
                        Divider()
                            .padding(.horizontal, 10)
                        Text("PASSWORD")
                            .font(.poppins(size: kHeadingFontSize))
                            .foregroundColor(.silver)
                            .padding()
                        SecureField("", text: $password)
                            .font(.poppins(size: kFontSize))
                            .foregroundColor(.arsenic)
                        Divider()
                            .padding(.horizontal, 10)
                    }
                    Button("Forget password?") {
                        
                    }.frame(alignment: .center)
                        .font(.poppins(size: kHeadingFontSize))
                        .foregroundColor(.gold)
                        .padding()
                    Button("Login") {
                        
                    }
                    .padding()
                    .frame(width: kButtonWidth)
                    .background(Color.crayola)
                    .cornerRadius(18)
                    .foregroundColor(.arsenic)
                    .font(.poppins(size: 22))
                    Spacer().frame(height: 35)
                    HStack(alignment:.center, spacing: 0) {
                        Text("Don't have an account?")
                            .font(.poppins(size: kHeadingFontSize))
                            .foregroundColor(.silver)
                        Button("Create new account") {
                            
                        }
                        .font(.poppins(size: kHeadingFontSize))
                        .foregroundColor(.gold)
                        .frame(alignment: .center)
                    }
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                .offset(y: -80)
                .frame(width: kWidth, height: UIScreen.main.bounds.height * 0.5, alignment: .leading)
            } .frame(width: kWidth)
        }
    }
}

struct FRLoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        FRLoginScreen()
        FRLoginScreen()
            .previewDevice("iPad (9th generation)")
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
