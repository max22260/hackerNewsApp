//
//  DetailView.swift
//  Hacker News APP
//
//  Created by Nagy on 21/03/2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    
    var body: some View {
        
        
        WebView(url: url )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
