//
//  CardsCell.swift
//  cards
//
//  Created by gerardo on 21/02/18.
//  Copyright © 2018 Orbis. All rights reserved.
//

import UIKit

class CardsCell: UITableViewCell {

    @IBOutlet weak var viewCard: UIView!
    @IBOutlet weak var imageCard: UIImageView!
    @IBOutlet weak var labelCard: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        imageCard.layer.masksToBounds = true
        viewCard.layer.masksToBounds = false
        viewCard.layer.cornerRadius = 8.0
        imageCard.layer.cornerRadius = 8.0
        viewCard.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        viewCard.layer.shadowOffset = CGSize(width: 0, height: 0)
        viewCard.layer.shadowOpacity = 0.8
    }
}
