//
//  HomeworkViewCell.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/17/21.
//

import UIKit

class HomeworkViewCell: UITableViewCell {
    
    var homework: HomeworkToDoList?{
        didSet{
            guard let homework = homework else { return }
            guard let homeworkTitle = homework.title else { return }
            guard let homeworkSubject = homework.subject else { return }
            
            HomeworkLabel.text = homeworkTitle
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MM-yyyy HH:mm"
            dateLabel.text = "Para: "+formatter.string(from: homework.dateScheduled ?? Date())
            subjectLabel.text = homeworkSubject
            
            setConstriants()
            
        }
    }
    
    private let stackHorizontal: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .firstBaseline
        stack.isBaselineRelativeArrangement = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackVertical: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    
    private let stackVertical2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 5
        stack.distribution = .equalCentering
        stack.alignment = .trailing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let HomeworkLabel : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .systemFont(ofSize: 18, weight: .bold)
        etiqueta.textColor = UIColor(named: "Letter1")
        etiqueta.numberOfLines = 1
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .left
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let dateLabel : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .systemFont(ofSize: 13, weight: .thin)
        etiqueta.textColor = UIColor(named: "Letter1")
        etiqueta.numberOfLines = 2
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .left
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let subjectLabel : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .systemFont(ofSize: 14, weight: .regular)
        etiqueta.textColor = UIColor(named: "Letter1")
        etiqueta.numberOfLines = 2
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .right
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private let extraLabel : UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .systemFont(ofSize: 17, weight: .bold)
        etiqueta.textColor = .azulUnam
        etiqueta.text = "Asignatura"
        etiqueta.numberOfLines = 1
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .right
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
   
    
    func setConstriants(){
        addSubview(stackHorizontal)
        
        stackHorizontal.addArrangedSubview(stackVertical)
        stackHorizontal.addArrangedSubview(stackVertical2)
        
        stackVertical.addArrangedSubview(HomeworkLabel)
        stackVertical.addArrangedSubview(dateLabel)
        
        stackVertical2.addArrangedSubview(extraLabel)
        stackVertical2.addArrangedSubview(subjectLabel)
        
        NSLayoutConstraint.activate([
            stackHorizontal.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            stackHorizontal.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stackHorizontal.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            stackHorizontal.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
        
        ])
    }
    
}
