//
//  NetworkManager.swift
//  realApp
//
//  Created by Dmytro Gavrylov on 03.11.2022.
//

import Foundation
import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    private init() { }
    
    func postAction() {
        let url = String(format: "https://id.twitch.tv/oauth2/token")
        guard let serviceUrl = URL(string: url) else { return }
        let parameters: [String: Any] = ["client_id": "kjq7yoad2zmlsdistyyed8uctbtwei",
                          "client_secret": "xb3pwrovnvf0du0gimuuaz1c9ja83k",
                          "grant_type": "client_credentials"]
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters) else {
            return
        }
        request.httpBody = httpBody
       
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
