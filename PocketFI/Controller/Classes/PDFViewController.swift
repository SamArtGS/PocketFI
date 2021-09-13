//
//  PDFViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/9/21.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController{
    
    private var document: PDFDocument?
    private var pdfName: String
    private var link: String
    private var activityIndicator = UIActivityIndicatorView(style: .gray)
    
    private let pdffileurl : URL = {
        let fm = FileManager.default
        let docsurl = try! fm.url(
            for: .documentDirectory, in: .userDomainMask,
            appropriateFor: nil, create: true)
        return docsurl.appendingPathComponent("mypdf.pdf")
    }()
   
    private let pdfView:PDFView = {
        let pdfView = PDFView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        pdfView.displayDirection = .vertical
        pdfView.displaysPageBreaks = true
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.pageBreakMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        pdfView.displayMode = .singlePageContinuous
        return pdfView
    }()
    
    init(pdfName: String, link: String) {
        self.pdfName = pdfName
        self.link = link
        super.init(nibName: nil, bundle: nil)
        self.title = pdfName
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadPDF() {
        let docsurl = try? FileManager.default.url(
            for: .documentDirectory, in: .userDomainMask,
            appropriateFor: nil, create: true)
        if FileManager.default.fileExists(atPath: docsurl?.appendingPathComponent(pdfName).path ?? ""){
            self.activityIndicator.stopAnimating()
            self.dismiss(animated: true)
            pdfView.document = PDFDocument(url: docsurl!.absoluteURL)
            self.document = pdfView.document
            pdfView.autoScales = true
            pdfView.minScaleFactor = 0.6
            pdfView.maxScaleFactor = 12.0
        }else{
            DispatchQueue.main.async {
                    if let url = URL(string: self.link) {
                        if let pdfDocument = PDFDocument(url: url) {
                            
                            self.document = pdfDocument
                            self.pdfView.autoScales = true
                            self.pdfView.document = pdfDocument
                            self.pdfView.minScaleFactor = 0.6
                            self.pdfView.maxScaleFactor = 12.0
                            self.activityIndicator.stopAnimating()
                            self.dismiss(animated: true)
                        } else {
                            self.activityIndicator.stopAnimating()
                            self.dismiss(animated: true)
                            self.navigationController?.popViewController(animated: true)
                            self.mostrarAlerta(title: "Error PDF", message: "No se pudo mostrar el PDF")
                            
                        }
                    } else {
                        print("HUBO ERROR en URL")
                        self.dismiss(animated: true)
                        self.activityIndicator.stopAnimating()
                        self.navigationController?.popViewController(animated: true)
                        self.mostrarAlerta(title: "Error URL", message: "Error el los links")
                    }
                }
            }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mostrarAletraConIndicator(title: "Descargando", activityIndicator: &activityIndicator)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = pdfView.backgroundColor
        setConstraints()
        setBarButtons()
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500), execute: {
            self.loadPDF()
        })
    }
    
    
    
    func setBarButtons(){
        if #available(iOS 13.0, *) {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(sendToApp))
            
            let BarButtonItemRightSave = UIBarButtonItem(image: UIImage(systemName: "arrow.down.doc.fill"), style: .plain, target: self, action: #selector(savePDF))
            
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight,BarButtonItemRightSave]
        } else {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(named: "icons8-upload-60"), style: .plain, target: self, action: #selector(sendToApp))
            let BarButtonItemRightSave = UIBarButtonItem(image: UIImage(named: "icons8-save"), style: .plain, target: self, action: #selector(savePDF))
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight,BarButtonItemRightSave]
        }
    }
    
    @objc private func savePDF(){
        
    }
    func downloadPDF(){
        URLSession.shared.downloadTask(with: URL(string: link)!) { (url, resp, err) in
            if let url = url {
                let fm = FileManager.default
                try? fm.removeItem(at: self.pdffileurl)
                try? fm.moveItem(at: url, to: self.pdffileurl)
                DispatchQueue.main.async {
                    print(self.pdffileurl)
                    let doc = PDFDocument(url: self.pdffileurl)
                    self.pdfView.document = doc
                    self.pdfView.autoScales = true
                    self.pdfView.minScaleFactor = 0.6
                    self.pdfView.maxScaleFactor = 12.0
                }
            }
        }.resume()
    }
    
    @objc func sendToApp(){
        
        guard let data = document?.dataRepresentation() else { return }
        
        let activityController = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        present(activityController, animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.tabBarController?.tabBar.isHidden = true
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.myOrientation = .all
    }
       
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.tabBarController?.tabBar.isHidden = false
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.myOrientation = .portrait
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
    

    func setConstraints(){
        view.addSubview(pdfView)
        NSLayoutConstraint.activate([
            pdfView.topAnchor.constraint(equalTo: view.topAnchor),
            pdfView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pdfView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pdfView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}
