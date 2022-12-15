//
//  Device+CoreDataProperties.swift
//  smartbicycle
//
//  Created by rex on 2022/12/14.
//
//

import Foundation
import CoreData


extension Device {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Device> {
        return NSFetchRequest<Device>(entityName: "Device")
    }

    @NSManaged public var company: String?
    @NSManaged public var name: String?
    @NSManaged public var timestamp: Date?
    @NSManaged public var version: String?

}

extension Device : Identifiable {

}
