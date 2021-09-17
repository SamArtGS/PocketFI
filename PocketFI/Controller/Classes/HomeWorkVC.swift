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
        tableView.register(HomeworkViewCell.self, forCellReuseIdentifier: "cell")
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
    
    func saveInDatabase(title: String, date: Date, subject: String) -> Bool{
        let newHW = HomeworkToDoList(context: context)
        newHW.title = title
        newHW.dateScheduled = date
        newHW.subject = subject
        
        do{
            try context.save()
            getAllItems()
            return true
        }catch{
            mostrarAlerta(title: "Error", message: "Error al guardar la tarea")
            return false
        }
    }
    
    func deleteFromDatabase(item: HomeworkToDoList?){
        guard let item = item else { return }
        context.delete(item)
        do{
            try context.save()
            getAllItems()
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
}


extension HomeWorkViewController: UITableViewDelegate, AddHomeWorkDelegate{
    
    @objc func didTapAdd() {
        addHomeWork()
    }
    
    func saveHomeWorkInDatabase(title: String, body: String, date: Date){
        let content = UNMutableNotificationContent()
        content.title = title
        content.sound = .default
        content.body = body
        
        if saveInDatabase(title: title, date: date, subject: body){
            let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day,
                                                                                                       .hour, .minute, .second],
                                                                                                      from: date),
                                                                                                      repeats: false)
            let request = UNNotificationRequest(identifier: "\(Int.random(in: 20210900...20220900))", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
                if error != nil {
                    debugPrint("La notificación no pudo ser creada")
                }
              }
            )
        }
    }
    
    func addHomeWork() {
        let vc = AddHomeWorkViewController(title: "Nueva tarea")
        vc.navigationItem.largeTitleDisplayMode = .always
        vc.delegate = self
        present(vc, animated: true)
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeworkViewCell
        cell.homework = models[indexPath.row]
        return cell
    }
}

extension HomeWorkViewController{
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Editar") {(action, view, completion) in
            
            

        }
        editAction.backgroundColor = .systemYellow
        return UISwipeActionsConfiguration(actions: [editAction])
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [weak self](action, view, completion) in
            
            let cell = tableView.cellForRow(at: indexPath) as! HomeworkViewCell
            self?.deleteFromDatabase(item: cell.homework)
            
            completion(true)
        }
        deleteAction.backgroundColor = .systemRed
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
