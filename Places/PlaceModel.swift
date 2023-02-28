//
//  PlaceModel.swift
//  Places
//
//  Created by Armen Madoyan on 08.01.2023.
//

//import UIKit
import UIKit
import RealmSwift

class Place: Object {
    @Persisted var name: String
    @Persisted var location: String?
    @Persisted var type: String?
    @Persisted var imageData: Data?
    @Persisted var date = Date()
    
    convenience init(name: String, location: String? = nil, type: String? = nil, imageData: Data? = nil) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }

}
