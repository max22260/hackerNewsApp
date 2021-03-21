//
//  WebView.swift
//  Hacker News APP
//
//  Created by Nagy on 21/03/2021.
//



import SwiftUI
import WebKit

import Foundation


struct WebView : UIViewRepresentable {
    
    let url: String?
    
    func makeUIView(context: Context) ->  WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        

        if let safeUrl = url {
            if let url = URL(string: safeUrl){
                let request = URLRequest(url: url)
                
                uiView.load(request)
                
            }
        }
    }
    

}
