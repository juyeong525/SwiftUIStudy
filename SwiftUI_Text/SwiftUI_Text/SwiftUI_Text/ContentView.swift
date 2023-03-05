//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by 박주영 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년_ M월_ d일"
        formatter.dateStyle = .long
        return formatter
    }()
    var today = Date()
    
    var tureOrFalse = false
    
    var number = 123
    var body: some View {
        VStack{
            Text("ㅁㄴ어라미asdfjklasfkasdjkfjkqnwenrmq,nfasdjfansdvasndkfajnsfjknasdjkfnasdfnkasndfajskdfnjkasndfkjnaskdfnkasndfkjanskdfnkansdfkasndjkfnajksnd")
                .tracking(5)
                .font(.system(.body, design: .rounded))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10)
                .truncationMode(.tail)
                .shadow(color: Color.red, radius: 1.5, x: -10, y: 10)
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            Text("안녕하세요!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            Text("참 혹은 거짓 : \(String(tureOrFalse))")
            Text("숫자입니다 : \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
