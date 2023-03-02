//
//  ContentView.swift
//  SwiftUI_WebView
//
//  Created by 박주영 on 2023/02/18.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.naver.com")){
                    Text("네이버")
                        .padding()
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.daum.net")){
                    Text("다음")
                        .padding()
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .background(Color.yellow)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.google.com")){
                    Text("구글")
                        .padding()
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
