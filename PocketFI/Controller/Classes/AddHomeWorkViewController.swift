//
//  AddHomeWorkViewController.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/16/21.
//

import UIKit

protocol AddHomeWorkDelegate : AnyObject{
    func saveHomeWorkInDatabase(title: String, body: String, date: Date)
}

class AddHomeWorkViewController: UIViewController{
    
    weak var delegate: AddHomeWorkDelegate?
    
    private let buttonAccept:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.systemGreen, for: .normal)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 5
        boton.setTitle("Agregar", for: .normal)
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    private let buttonDismiss:UIButton = {
        let boton = UIButton(type: .system)
        boton.setTitleColor(.blackLetter, for: .normal)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.borderWidth = 0
        boton.setTitle("Cancelar", for: .normal)
        boton.isUserInteractionEnabled = true
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    
    private let image: UIImageView = {
        let image = UIImageView(image: UIImage(named: "icons8-task_planning"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .center
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let titleTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.tintColor = .blackLetter
        textField.attributedPlaceholder = NSAttributedString(string: "Nombre tarea",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.blackLetter])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let subjectTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.tintColor = .blackLetter
        textField.attributedPlaceholder = NSAttributedString(string: "Asignatura",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.blackLetter])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let hintDate: UILabel = {
        let hintDate = UILabel()
        hintDate.textColor = .blackLetter
        hintDate.text = "Fecha de entrega"
        hintDate.translatesAutoresizingMaskIntoConstraints = false
        hintDate.numberOfLines = 0
        hintDate.textAlignment = .left
        hintDate.sizeToFit()
        hintDate.contentMode = .scaleAspectFit
        return hintDate
    }()
    
    let picker: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        return pickerView
    }()
    
    let dateTimePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.calendar = .current
        datePicker.tintColor = .oroUnam
        return datePicker
    }()
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        self.title = title
        view.backgroundColor = .gray1
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setConstraints(){
        buttonDismiss.addTarget(self, action: #selector(dismissViewController), for: .touchUpInside)
        buttonAccept.addTarget(self, action: #selector(writeElements), for: .touchUpInside)
        view.addSubview(buttonDismiss)
        view.addSubview(stackView)
        stackView.addArrangedSubview(image)
        stackView.addArrangedSubview(titleTextField)
        stackView.addArrangedSubview(subjectTextField)
        stackView.addArrangedSubview(hintDate)
        stackView.addArrangedSubview(dateTimePicker)
        stackView.addArrangedSubview(buttonAccept)
        
        NSLayoutConstraint.activate([
            
            buttonDismiss.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            buttonDismiss.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
            buttonDismiss.widthAnchor.constraint(equalToConstant: 80),
            buttonDismiss.heightAnchor.constraint(equalToConstant: 20),
            titleTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            subjectTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            stackView.topAnchor.constraint(equalTo: buttonDismiss.bottomAnchor, constant: 20),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonDismiss.widthAnchor.constraint(equalToConstant: 80),
            buttonDismiss.heightAnchor.constraint(equalToConstant: 20),
            buttonAccept.widthAnchor.constraint(equalToConstant: 100),
            buttonAccept.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
        
    }
    
    @objc func dismissViewController(){
        self.dismiss(animated: true)
    }
    
    @objc func writeElements(){
        delegate?.saveHomeWorkInDatabase(title: titleTextField.text ?? "", body: subjectTextField.text ?? "", date: dateTimePicker.date)
        self.dismiss(animated: true)
    }
    
}


extension AddHomeWorkViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.titleTextField.endEditing(true)
        self.subjectTextField.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        titleTextField.endEditing(true)
        subjectTextField.endEditing(true)
        return true
    }
    
    
    @objc override func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height - view.safeAreaInsets.bottom
                
            }
        }
    }

    @objc override func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
            
        }
    }
    
    func showAlert(title: String, message: String){
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion: nil)
    }
}
