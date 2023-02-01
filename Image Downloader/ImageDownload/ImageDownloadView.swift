//
//  ImageDownloadView.swift
//  Image Downloader
//
//  Created by chiawei wen on 1/29/23.
//

import Foundation
import UIKit

class ImageDownloadView: UIView {
    
    let searchBarForImage: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 0.5
        return view
    }()
    
    let downloadButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Download Image", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        addSubview(searchBarForImage)
        addSubview(imageView)
        addSubview(downloadButton)
        
        searchBarForImage.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 150).isActive = true
        searchBarForImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        searchBarForImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        searchBarForImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        imageView.topAnchor.constraint(equalTo: searchBarForImage.bottomAnchor, constant: 40).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        downloadButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40).isActive = true
        downloadButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        downloadButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func configureImage(with image: UIImage) {
        imageView.image = image
    }
}
