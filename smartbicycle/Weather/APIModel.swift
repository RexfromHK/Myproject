//
//  ContactModel.swift
//  ContactSwiftUI
//
//  Created by itst on 29/11/2022.
//

import Foundation
class APIModel : ObservableObject {
 @Published var contacts : [SimpleContact] = []
    func fetch() {
     let urlStr = "https://cdn.jsdelivr.net/gh/RexfromHK/api@main/weather.json"
     if let url = URL(string: urlStr) {
     let urlRequest = URLRequest(url: url)
     let dataTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: {
     data, response, error in
     if let data = data {
     //remove all data
    self.contacts.removeAll()
     //create JSON decoder
    let decoder = JSONDecoder()
     //decode the JSON to SimpleContact Array
    if let results = try? decoder.decode([SimpleContact].self, from: data) {
     //reload the table
     DispatchQueue.main.async{
     self.contacts = results
     }
     }
     }
     })
     dataTask.resume()
     }
     }
    
}

