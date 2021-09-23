//
//  Homework+CoreDataProperties.swift
//  
//
//  Created by Samuel Arturo Garrido Sánchez on 9/16/21.
//
//

import Foundation
import CoreData


extension HomeworkToDoList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HomeworkToDoList> {
        return NSFetchRequest<HomeworkToDoList>(entityName: "HomeworkToDoList")
    }

    @NSManaged public var title: String?
    @NSManaged public var dateScheduled: Date?
    @NSManaged public var subject: String?
    @NSManaged public var didDone: Bool
}
