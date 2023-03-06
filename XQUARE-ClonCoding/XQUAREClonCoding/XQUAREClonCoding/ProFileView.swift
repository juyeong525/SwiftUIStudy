//
//  ContentView.swift
//  XQUAREClonCoding
//
//  Created by 박주영 on 2023/03/06.
//

import SwiftUI

struct ProFileView: View {
    var imageUrl: String
    var name: String
    var merit: Int
    var demerit: Int
    
    var body: some View {
        HStack(spacing: 12) {
            Spacer().frame(width: 16)
            AsyncImage(url: URL(string: imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Image(systemName: "Person")
                    .resizable()
                    .scaledToFill()
            }
            .frame(width: 44, height: 44)
            .cornerRadius(22)
            VStack(alignment: .leading, spacing: 0) {
                Text(name)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color.black)
                Text("상점 \(merit) 벌점 \(demerit)")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color.black)
            }
            Spacer()
        }
        .frame(height: 76)
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct ProFileView_Previews: PreviewProvider {
    static var previews: some View {
        ProFileView(imageUrl: "ㄴㅇㄹ", name: "박주영", merit: 5, demerit: 43)
    }
}
