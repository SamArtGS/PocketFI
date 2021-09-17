//
//  Tareas.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UserNotifications
import UIKit

class HomeWorkViewController: UIViewController {

    var models = [HomeworkToDoList]()
    
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
        getAllItems()
    }

    func getAllItems(){
        do{
            models = try context.fetch(HomeworkToDoList.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }catch{
            mostrarAlerta(title: "Error", message: "No se pudo cargar las tareas")
        }
        
    }
    
    func saveInDatabase(title: String, date: Date, subject: String){
        let newHW = HomeworkToDoList(context: context)
        newHW.title = title
        newHW.dateScheduled = date
        newHW.subject = subject
        
        do{
            try context.save()
            getAllItems()
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
        let date = models[indexPath.row].dateScheduled

        let formatter = DateFormatter()
        formatter.dateFormat = "dd, MMM, YYYY"
        cell.detailTextLabel?.text = formatter.string(from: date ?? Date())

        cell.textLabel?.font = UIFont(name: "Arial", size: 25)
        cell.detailTextLabel?.font = UIFont(name: "Arial", size: 22)
        return cell
    }
}

