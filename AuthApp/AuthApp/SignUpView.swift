import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView() {
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
                    Text("회원가입")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color("main"))
                }
                TextFieldView(title: "아이디")
                Spacer().frame(height: 8)
                TextFieldView(title: "비밀번호")
                Spacer()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
