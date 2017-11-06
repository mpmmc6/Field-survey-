//
//  fieldobservationJSONLoader.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 11/2/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import Foundation
class fieldObservationJSONLoader{

    class func load(fileName : String) -> [FieldObservation]{
        var observations = [FieldObservation]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json" ),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = FieldObservationparser.parse(data)
        }
        return observations
    }
}
