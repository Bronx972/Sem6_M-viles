//
//  ItemTableViewCell.swift
//  Sem6-b-Ricardo
//
//  Created by Alumno on 6/05/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    
    
    @IBOutlet weak var movieLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
