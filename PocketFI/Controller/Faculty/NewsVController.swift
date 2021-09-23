//
//  NewsVController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UIKit

class NewsVController: UIViewController {
    
    var newAdded: Noticia?
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isScrollEnabled = true
        scrollView.isPagingEnabled = false
        scrollView.isUserInteractionEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    private let scrollViewContainer: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.spacing = 0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let titulo: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Roboto(.bold, size: 25)
        etiqueta.textColor = .white
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.numberOfLines = 0
        etiqueta.textAlignment = .left
        etiqueta.addShadow(opacy: 0.4)
        etiqueta.sizeToFit()
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    let noticia: CustomUILabel = {
        let etiqueta = CustomUILabel()
        etiqueta.font = .Roboto(.regular, size: 18)
        etiqueta.textColor = .blackLetter
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.numberOfLines = 0
        etiqueta.textAlignment = .justified
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let imageNew: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
   }()
    
   private let imageEnd: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
   }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addElements()
        setConstraints()
        view.backgroundColor = .gray1
        
        let BarButtonItemRight = menuBotonBack(self,
        action: #selector(salir),
        imageName: "icons8-cancel")
        view.addSubview(BarButtonItemRight)
        NSLayoutConstraint.activate([
            BarButtonItemRight.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            BarButtonItemRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            BarButtonItemRight.widthAnchor.constraint(equalToConstant: 30),
            BarButtonItemRight.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    func menuBotonBack(_ target: Any?, action: Selector, imageName: String) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: imageName), for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        return button
    }
    
    @objc func anyA(){}
    
    
    func addElements(){
        view.addSubview(scrollView)
        scrollView.addSubview(scrollViewContainer)
        scrollViewContainer.addArrangedSubview(imageNew)
        scrollViewContainer.addArrangedSubview(noticia)
        imageNew.addSubview(titulo)
        
    }
    
    init(newAdded: Noticia?) {
        self.newAdded = newAdded
        super.init(nibName: nil, bundle: nil)
        self.imageNew.image = UIImage(named: newAdded?.miniatura ?? "")
        self.titulo.text = newAdded?.titulo
        self.noticia.text = newAdded?.textos[0]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            imageNew.heightAnchor.constraint(equalTo: view.heightAnchor,multiplier: 0.4),
            imageNew.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            titulo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            titulo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            titulo.bottomAnchor.constraint(equalTo: imageNew.bottomAnchor, constant: -15),
            noticia.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            noticia.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
        
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        navigationItem.largeTitleDisplayMode = .always
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.coolourNavigationBar(colorBackground: .clear, colorTint: .oroUnam, textColor: .blackLetter)
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationItem.largeTitleDisplayMode = .automatic
    }
}
