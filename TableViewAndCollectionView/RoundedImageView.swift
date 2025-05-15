//
//  RoundedImageView.swift
//  TableViewAndCollectionView
//
//  Created by ADMIN on 14/05/25.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        setUpView()
    }
    func setUpView(){
//        self.layer.cornerRadius = self.frame.height/2
//        self.clipsToBounds = true
//        self.layer.masksToBounds = false
//        self.layer.borderColor = UIColor.black.cgColor
//        self.layer.borderWidth = 1
        
                self.layer.borderWidth = 1
                self.layer.masksToBounds = false
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.cornerRadius = self.frame.height/2
                self.clipsToBounds = true
        
    }

}
