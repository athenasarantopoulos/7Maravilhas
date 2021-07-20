//
//  DetailsViewController.swift
//  7Maravilhas
//
//  Created by Athena Fernandes Sarantôpoulos on 20/07/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var maravilhaImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var maravilhas: Maravilha?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = maravilhas?.name.capitalized
        cityLabel.text = maravilhas?.city.capitalized
        descriptionTextView.text = maravilhas?.description.capitalized
        maravilhaImageView.image = maravilhas?.image
    }
    



}
