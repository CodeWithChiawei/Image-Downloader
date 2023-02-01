//
//  ImageDownloadViewController.swift
//  Image Downloader
//
//  Created by chiawei wen on 1/29/23.
//


// Project Naming
// Controller Naming
// Wire Framing,
    // writing and design before coding.
    // structure out the structure and what are needed.
    // System design,
// add argument label in method
// aware of comment and speaking while coding
// stackOver flow - look at question, make sure the question is correct. Search and look.

import Foundation
import UIKit

class ImageDownloadViewController: UIViewController {
    
    let contentView = ImageDownloadView()
    let networkManager = NetworkManager()
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.downloadButton.addTarget(
            self,
            action: #selector(downloadButtonTapped),
            for: .touchUpInside
        )
        print("Bye bye World.")
    }
    
    @objc func downloadButtonTapped() {
        guard let text = contentView.searchBar.text, let url = URL(string: text) else { return }
        networkManager.fetchImage(url: url) { data in
            guard let image = UIImage(data: data) else { return }
            DispatchQueue.main.async {
                self.contentView.configureImage(with: image)
            }
        }
    }
}
