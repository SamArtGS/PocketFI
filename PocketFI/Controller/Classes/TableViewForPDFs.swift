//
//  TableViewForPDFs.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/9/21.
//

import UIKit

class TableViewForPDFs: UIViewController{
    
    private var lista = [PDFelement]()
    private var listaFiltrada = [PDFelement]()
    private let titulo:String
    fileprivate var observer: NSKeyValueObservation?
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    init(titulo:String,lista: [PDFelement]){
        self.lista = lista
        self.listaFiltrada = lista
        self.titulo = titulo
        super.init(nibName: nil, bundle: nil)
        tableView.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 30, right: 5)
        setNavConfig(title: titulo)
        searchController.obscuresBackgroundDuringPresentation = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let searchController = UISearchController()
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.searchController = searchController
        
        if #available(iOS 13.0, *) {
            self.navigationItem.searchController?.searchBar.searchTextField.textColor = .white
            self.navigationItem.searchController?.searchBar.searchTextField.tintColor = .white
        } else {
            self.navigationItem.searchController?.searchBar.tintColor = .white
        }
        
        tableView.backgroundColor = .gray1
        tableView.delegate = self
        searchController.searchResultsUpdater = self
        searchController.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        setConstraints()
        
    }
    
    func setConstraints(){
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -10)
        ])
    }
}
extension TableViewForPDFs: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaFiltrada.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = listaFiltrada[indexPath.item].name
        cell.backgroundColor = .gray1
        return cell
    }
}

extension TableViewForPDFs: UISearchControllerDelegate{
    
}
extension TableViewForPDFs: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            listaFiltrada = lista
            return
        }
        listaFiltrada = lista.filter { resource in
            resource.name.forSorting.lowercased().contains(text.forSorting.lowercased())
        }
        if listaFiltrada.isEmpty && text == "" {
            listaFiltrada = lista
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = PDFViewController(pdfName: listaFiltrada[indexPath.item].name,link: listaFiltrada[indexPath.item].link)
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension TableViewForPDFs{
    
    func differentStyleForLargeTitle(){
        self.observer = self.navigationController?.navigationBar.observe(\.bounds, options: [.new], changeHandler: { (navigationBar, changes) in
            if let height = changes.newValue?.height {
                if height > 44.0 {
                    self.navigationItem.title = "Bienvenido"
                    self.tabBarController?.navigationItem.title = " "
                } else {
                    self.navigationItem.title = "Facultad"
                    self.tabBarController?.navigationItem.title = " "
                }
            }
        })
    }
}
