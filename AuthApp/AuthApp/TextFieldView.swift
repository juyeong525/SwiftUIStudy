import SwiftUI

struct TextFieldView: View {
    @State var text: String = ""
    var title: String = ""
    var body: some View {
        TextField(title, text: $text)
            .padding(16)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
                    .frame(height: 52)
            }
            .padding(.horizontal, 16)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
