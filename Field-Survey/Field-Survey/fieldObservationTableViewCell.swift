//
//  fieldObservationTableViewCell.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 11/5/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class fieldObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
