//
//  DataController.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 16/11/22.
//
import CoreData
import Foundation

class DataController: ObservableObject {
     let container = NSPersistentContainer(name: "Contacts")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("core data failed to load: \(error.localizedDescription ) ")
            }
            
        }
    }
}
