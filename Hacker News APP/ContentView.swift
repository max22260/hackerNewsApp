//
//  ContentView.swift
//  Hacker News APP
//
//  Created by Nagy on 18/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManger = NetworkManger()
    
    var body: some View {
        NavigationView{
            
            List(networkManger.posts){ post in
                
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            VStack {
                                Text(post.title)
                            }
                        }
                    })
            }
            .navigationBarTitle("Hacker News APP")
        }
        .onAppear {
            
            networkManger.fetchData()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
