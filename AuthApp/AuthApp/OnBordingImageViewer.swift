//
//  OnBordingImageViewer.swift
//  AuthApp
//
//  Created by 박주영 on 2023/03/23.
//

import SwiftUI

struct OnBordingImageViewer: View {
    private let onboardingViews: [(image: Image, color: Color)] = [
        (Image("dmsImage"), Color("dmsColor")),
        (Image("xquareImage"), Color("main"))
    ]
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "main")
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(named: "dmsColor")
    }
    
    
    var body: some View {
        TabView {
            ForEach(self.onboardingViews.indices, id: \.self) { index in
                VStack {
                    ZStack(alignment: .center) {
                        onboardingViews[index].color
                            .ignoresSafeArea(edges: .top)
                        onboardingViews[index].image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal, 60)
                    }
                    Spacer().frame(height: 56)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnBordingImageViewer_Previews: PreviewProvider {
    static var previews: some View {
        OnBordingImageViewer()
    }
}
