import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer().frame(height: 5)
                VStack(spacing: 10) {
                    ProFileView(imageUrl: "sdf", name: "박주영", merit: 5, demerit: 43)
                    MealMeunView()
                }
                .padding([.leading, .trailing], 16)
            }
            .background(Color.secondary)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
