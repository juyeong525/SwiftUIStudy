import SwiftUI

struct OnBordingView: View {
    @State var isSignupViewPresented: Bool = false
    @State var isLoginViewPresented: Bool = false
    var body: some View {
        VStack {
            OnBordingImageViewer()
            Button(action: {
                self.isSignupViewPresented = true
            }, label: {
                Text("바로 시작하기")
                    .frame(maxWidth: .infinity)
                    .padding([.top, .bottom], 16)
                    .background(Color("main"))
                    .foregroundColor(.white)
            })
            .cornerRadius(12)
            .padding(.bottom, 16)
            .background()
            .padding([.top, .leading, .trailing], 16)
            Button(action: {
                self.isLoginViewPresented = true
            }, label: {
                HStack {
                    Text("이미 계정이 있으신가요?")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                    Text("로그인하기")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                }
            })
            Spacer(minLength: 40)
        }
        .ignoresSafeArea(edges: .top)
        .fullScreenCover(isPresented: $isLoginViewPresented){
            LoginView()
        }
        .fullScreenCover(isPresented: $isSignupViewPresented) {
            SignUpView()
        }
    }
}

struct OnBordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBordingView()
    }
}
