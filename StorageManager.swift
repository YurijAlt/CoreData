//
//  StorageManager.swift
//  CoreDataDemo
//
//  Created by Юрий Чекалюк on 17.05.2021.
//

import CoreData

class StorageManager {
    static let shared = StorageManager()
    
    //MARK: Core Data Stack
    
    private let persistantContainer: NSPersistentContainer = {
        let conteiner = NSPersistentContainer(name: "CoreDataDemo")
        conteiner.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error)")
            }
        })
            return conteiner
    }()
    
    private let viewContext: NSManagedObjectContext
    
    
    
    private init() {
        viewContext = persistantContainer.viewContext
    }
    
    
    //MARK: Public Methods
    
    func fetchData(completion: (Result<[Task], Error>) -> Void) {
        let fetchRequest: NSFetchRequest<Task> = Ta
    }
    
  
    
}
