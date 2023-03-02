import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    func makeUIView(context: Context) -> some WKWebView  {
        
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
