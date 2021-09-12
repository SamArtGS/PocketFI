//
//  Tareas.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/12/21.
//

import UserNotifications
import UIKit

class HomeWorkViewController: UIViewController {

    var models = [Homework]()
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
    
    

    @objc func didTapAdd() {
        // show add vc
       
//        vc.title = "New Reminder"
//        vc.navigationItem.largeTitleDisplayMode = .never
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
//        navigationController?.pushViewController(vc, animated: true)

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
