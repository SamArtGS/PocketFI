//
//  CurricularProgress.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/22/21.
//

import WebKit
import UIKit


class CurricularProgress:  UIViewController {
    
    private let webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        if let resourceUrl = URL(string: "https://www.dgae-siae.unam.mx/www_gate.php"){
            let request = URLRequest(url: resourceUrl)
            webView.load(request)
        }
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        setNavConfig(title: "SIAE")
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.tabBarController?.tabBar.isHidden = false
    }
    
}
