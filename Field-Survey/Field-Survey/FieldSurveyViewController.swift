//
//  FieldSurveyViewController.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 11/2/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var fieldObservationsTableView: UITableView!
    
    let fieldsObservations = fieldObservationJSONLoader.load (fileName: "field_observations")
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = . medium
        dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldsObservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationTableViewCell", for: indexPath )
        if let cell = cell as? fieldObservationTableViewCell{
            let fieldObservations = fieldsObservations[indexPath.row]
            cell.fieldIconImageView.image = fieldObservations.type.image
            cell.titleLabel.text = fieldObservations.title
//            dateFormatter.string(from: fieldObservations.date)
            cell.dateLabel.text = dateFormatter.string(from: fieldObservations.date)
            
        }
        
        return cell;
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController,
            let row = fieldObservationsTableView.indexPathForSelectedRow?.row{
            
            destination.fieldObservation = fieldsObservations[row]
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
