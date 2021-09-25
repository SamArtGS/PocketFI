//
//  CredentialService.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/6/21.
//

import Foundation
import PassKit

extension ProfileViewController: PKAddPassesViewControllerDelegate{
    
    func getCredential(studentID: Int){

        let url:URL! = URL(string: "https://d.pslot.io/p/mWyScTFeRACDM7gYzZv48Q.pkpass?t=giT786E")
        let request: URLRequest = URLRequest(url: url as URL)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task : URLSessionDataTask = session.dataTask(with: request as URLRequest, completionHandler: {[weak self] (data, response, error) in
            do {
              let pass = try PKPass(data: data ?? Data())
              let passLibrary = PKPassLibrary()
   
              if passLibrary.containsPass(pass) {
                DispatchQueue.main.sync {
                    self?.mostrarAlerta(title: "Crendencial repetida", message: "Esta credencial se encuentra en tu Wallet")
                }
                
              } else {
                if let pkvc = PKAddPassesViewController(pass: pass){
                    pkvc.delegate = self
                    DispatchQueue.main.sync {
                        self?.navigationController?.present(pkvc, animated: true)
                    }
                }else{
                    DispatchQueue.main.sync {
                        self?.mostrarAlerta(title: "Dispositivo No permitido", message: "Esta opción solo está disponibles en iPhone")
                    }
                }
                
            }
        }catch{
            self?.mostrarAlerta(title: "ERROR", message: "Error al cargar el pase")
        }
    })
    task.resume()
    }
}
