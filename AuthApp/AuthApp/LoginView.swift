//
//  ContentView.swift
//  AuthApp
//
//  Created by 박주영 on 2023/03/22.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var text: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24))
                        .tint(Color("main"))
                        .padding([.leading, .top, .bottom], 16)
                })
                Text("로그인")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color("main"))
            }
            Spacer().frame(height: 16)
            TextFieldView(title: "아이디")
            Spacer().frame(height: 8)
            TextFieldView(title: "비밀번호")
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
