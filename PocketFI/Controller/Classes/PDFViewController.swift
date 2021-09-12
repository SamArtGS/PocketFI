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
   
    private let pdfView:PDFView = {
        let pdfView = PDFView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        pdfView.displayDirection = .vertical
        pdfView.displaysPageBreaks = true
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.pageBreakMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        pdfView.displayMode = .singlePageContinuous
        return pdfView
    }()
    
    init(pdfName: String) {
        self.pdfName = pdfName
        super.init(nibName: nil, bundle: nil)
        self.title = pdfName
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let path = Bundle.main.url(forResource: "Practica10-AlFin", withExtension: "pdf") else { return }
        if let document = PDFDocument(url: path) {
            self.document = document
            pdfView.document = document
            pdfView.autoScales = true
            pdfView.minScaleFactor = 0.6
            pdfView.maxScaleFactor = 12.0
        }
        setConstraints()
        setBarButtons()
    }
    
    func setBarButtons(){
        if #available(iOS 13.0, *) {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(sendToApp))
            let BarButtonItemRightSave = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(savePDF))
            
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight,BarButtonItemRightSave]
        } else {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(named: "icons8-upload-60"), style: .plain, target: self, action: #selector(sendToApp))
            let BarButtonItemRightSave = UIBarButtonItem(image: UIImage(named: "icons8-save"), style: .plain, target: self, action: #selector(savePDF))
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight,BarButtonItemRightSave]
        }
    }
    
    @objc func savePDF(){
        
        
    }
    
    @objc func sendToApp(){
        
        guard let data = document?.dataRepresentation() else { return }
        
        let activityController = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = self.view
        present(activityController, animated: true)
        
        /*
        let fileManager = FileManager.default
        let docsurl = try! fileManager.url(for:.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let documentoPath =  docsurl.appendingPathComponent("yourfile.pdf")

        if fileManager.fileExists(atPath: documentoPath){
           let pdfData = NSData(contentsOfFile: documentoPath)
            var activityViewController = UIActivityViewController(activityItems: ["Abrir con aplicación", pdfData], applicationActivities: nil)   // and present it
            present(activityViewController, animated: true) {() -> Void in }
        }*/
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.tabBarController?.tabBar.isHidden = true
    }
       
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.tabBarController?.tabBar.isHidden = false
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
