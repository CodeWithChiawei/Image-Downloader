//
//  networkManager.swift
//  Image Downloader
//
//  Created by chiawei wen on 1/29/23.
//

import Foundation

class NetworkManager {
    
    func fetchImage(url : URL, completion: @escaping (Data) -> Void) {
        
        URLSession.shared.downloadTask(with: url) { url, _, error in
            if let error = error {
                print(error)
                return
            }
            if let url = url {
                guard let data = try? Data(contentsOf: url) else { return }
                completion(data)
            }
        }.resume()
    }
}
