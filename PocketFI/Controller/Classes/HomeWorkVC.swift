//
//  Tareas.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UserNotifications
import UIKit

class HomeWorkViewController: UIViewController {

    var models = [HomeworkToDo]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        self.title = title
        tableView.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 30, right: 5)
        setNavConfig(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        setConstraints()
        setBarButtons()
    }

    func getAllItems(){
        let items = try? context.fetch(HomeworkToDoList.fetchRequest())
    }
    
    func saveInDatabase(title: String, date: Date, subject: String){
        let newHW = HomeworkToDoList(context: context)
        newHW.title = title
        newHW.dateScheduled = date
        newHW.subject = subject
        
        do{
            try context.save()
        }catch{
            mostrarAlerta(title: "Error", message: "Error al guardar la tarea")
        }
    }
    
    func deleteFromDatabase(item: HomeworkToDoList){
        context.delete(item)
        do{
            try context.save()
        }catch{
            mostrarAlerta(title: "Error", message: "Error al remover la tarea")
        }
    }
    
    func updateFromDatabase(item: HomeworkToDoList, newTitle: String, newDate: Date, newSubject: String){
        item.title = newTitle
        item.dateScheduled = newDate
        item.subject = newSubject
        do{
            try context.save()
        }catch{
            mostrarAlerta(title: "Error", message: "Error al actualizar la tarea")
        }
    }
    
    func setConstraints(){
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    func setBarButtons(){
        if #available(iOS 13.0, *) {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(didTapAdd))
            
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight]
        } else {
            let BarButtonItemRight = UIBarButtonItem(image: UIImage(named: "icons8-plus_math"), style: .plain, target: self, action: #selector(didTapAdd))
            self.navigationItem.rightBarButtonItems = [BarButtonItemRight]
        }
    }
    
    

    @objc func didTapAdd() {
        let vc = AddHomeWorkViewController(title: "Nueva tarea")

        vc.navigationItem.largeTitleDisplayMode = .always
        
        
//        vc.completion = { title, body, date in
//        DispatchQueue.main.async {
//                self.navigationController?.popToRootViewController(animated: true)
//                let new = MyReminder(title: title, date: date, identifier: "id_\(title)")
//                self.models.append(new)
//                self.table.reloadData()
//
//                let content = UNMutableNotificationContent()
//                content.title = title
//                content.sound = .default
//                content.body = body
//
//                let targetDate = date
//                let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second],
//                                                                                                          from: targetDate),
//                                                            repeats: false)
//
//                let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
//                UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
//                    if error != nil {
//                        print("something went wrong")
//                    }
//                })
//            }
//        }
        present(vc, animated: true) { [weak self] in
            
            
            self?.tableView.reloadData()
        }

    }

    @objc func didTapTest() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
            if success {
                self.scheduleTest()
            }
            else if error != nil {
                print("error")
            }
        })
    }

    func scheduleTest() {
        let content = UNMutableNotificationContent()
        content.title = "Alerta"
        content.sound = .default
        content.body = "Alguna cosa"
        let targetDate = Date().addingTimeInterval(10)
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second],
                                            from: targetDate), repeats: false)

        let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                print("Algo salió mal")
            }
        })
    }

}

extension HomeWorkViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}


extension HomeWorkViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        let date = models[indexPath.row].date

        let formatter = DateFormatter()
        formatter.dateFormat = "MMM, dd, YYYY"
        cell.detailTextLabel?.text = formatter.string(from: date)

        cell.textLabel?.font = UIFont(name: "Arial", size: 25)
        cell.detailTextLabel?.font = UIFont(name: "Arial", size: 22)
        return cell
    }
    
    

}

class AddHomeWorkViewController: UIViewController{
    
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = 0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let titleTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle  = .line
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let noteTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle  = .line
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
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
        return datePicker
    }()
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        self.title = title
        view.backgroundColor = .gray1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        view.addSubview(stackView)
        stackView.addArrangedSubview(titleTextField)
        stackView.addArrangedSubview(noteTextField)
        stackView.addArrangedSubview(dateTimePicker)
        
        
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
        
        
    }
    
}


extension AddHomeWorkViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.titleTextField.text = ""
        self.noteTextField.text = ""
        self.titleTextField.endEditing(true)
        self.noteTextField.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
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
