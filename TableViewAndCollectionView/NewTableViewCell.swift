//
//  NewTableViewCell.swift
//  TableViewAndCollectionView
//
//  Created by ADMIN on 13/05/25.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var imgview: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
               // Initialization code
        
      
    }
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
