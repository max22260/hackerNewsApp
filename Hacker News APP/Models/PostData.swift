//
//  PostData.swift
//  Hacker News APP
//
//  Created by Nagy on 18/03/2021.
//

import Foundation



struct Results : Decodable {
    
    let hits: [Post]
}



struct Post : Decodable , Identifiable {
    
    var id : String{
        return objectID
    }
    
    let objectID : String
    let points: Int
    let title: String
    let url : String?
    
}
