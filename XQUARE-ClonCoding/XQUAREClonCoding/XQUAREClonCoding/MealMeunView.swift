import SwiftUI

struct MealMeunView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 16)
            HStack {
                Spacer().frame(width: 12)
                Text("오늘의 메뉴")
                    .font(.system(size: 16))
                Spacer()
                NavigationLink {
                    MealDetailView()
                } label: {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .tint(Color.secondary)
                }
                Spacer().frame(width: 16)
            }
            Spacer().frame(height: 30)
        }
        .frame(height: 70)
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct MealMeunView_Previews: PreviewProvider {
    static var previews: some View {
        MealMeunView()
    }
}
