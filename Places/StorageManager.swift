//
//  StorageManager.swift
//  Places
//
//  Created by Armen Madoyan on 25.02.2023.
//

import RealmSwift


class StorageManager {
    
    static let shared = StorageManager()
    
    let realm = try! Realm()
    
    private init(){}
    
    func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    func delete(place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
