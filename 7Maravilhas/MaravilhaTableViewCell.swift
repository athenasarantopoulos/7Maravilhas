//
//  MaravilhaTableViewCell.swift
//  7Maravilhas
//
//  Created by Athena Fernandes Sarantôpoulos on 19/07/21.
//

import UIKit

class MaravilhaTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var maravilhaImageView: UIImageView!
    @IBOutlet weak var cidadeLabel: UILabel!
    @IBOutlet weak var nomeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
