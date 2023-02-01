//
//  SceneDelegate.swift
//  Image Downloader
//
//  Created by chiawei wen on 1/29/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = ImageDownloadViewController()
        window?.makeKeyAndVisible()
        fatalError("VC name sucks")
    }
}

