//
//  fieldObservationparser.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 10/31/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import Foundation
class FieldObservationparser{
     static let dateformatter = DateFormatter()
   class func parse(_ data : Data) -> [FieldObservation] {
        
        var fieldObservations = [FieldObservation] ()
        dateformatter.dateFormat = "YYYY-MM-DD HH:MM"
    
    
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String : Any],
            let status = root["status"] as? String,
            status == "ok"{
        
            if let observations = root["observations"] as? [Any]{
                for observation in observations {
                    if let observation = observation as? [String: String]{
                        if let typeName = observation ["type"],
                            let title = observation ["title"],
                            let dateString = observation ["date"],
                            let date = dateformatter.date(from: dateString){
                                
                                if let fieldObservation = FieldObservation(typeName: typeName, title: title, date: date){
                                    fieldObservations.append(fieldObservation)
                                
                            }
                        }
                    }
                }
                
            }
        }
        
        return fieldObservations
    }
}
