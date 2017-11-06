//
//  FieldObservationDetailViewController.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 11/3/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    var fieldObservation : FieldObservation?
    var dateFormatter = DateFormatter()
    
//    dateFormatter.dateStyle = .medium
//    dateFormatter.timeStyle = .medium
//
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.title = "Event"
        fieldIconImageView.image = fieldObservation?.type.image
        TitleLabel.text = fieldObservation?.title
        
        if let date  = fieldObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        }
        else{
            dateLabel.text = ""
        }
        }
        
        
        // Do any additional setup after loading the view.
    

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
