//
//  FieldObservation.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 10/31/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import Foundation

struct FieldObservation {
    let type: Type
    let title: String
    let date: Date 
    
    init (type: Type, title : String , date : Date){
        self.type = type
        self.title = title
        self.date = date
    }

    init?(typeName: String, title : String , date : Date){
        if let type = Type(rawValue: typeName){
            self.init(type: type, title: title, date: date)
}
        else{
            return nil}
}

}
