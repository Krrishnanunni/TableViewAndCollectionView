//
//  DetailFruitsVC.swift
//  TableViewAndCollectionView
//
//  Created by ADMIN on 14/05/25.
//

import UIKit

class DetailFruitsVC: UIViewController {
    @IBOutlet weak var FruitsLbl: UILabel!
    @IBOutlet weak var FruitsImg: UIImageView!
    @IBOutlet weak var FruitsDetails: UITextView!
    var recivedImg:UIImage?
    var recivedString:String? = ""
    var recivedDetails:String? = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FruitsLbl.text = recivedString!
        FruitsImg.image = recivedImg!
        FruitsDetails.text = recivedDetails!
        // Do any additional setup after loading the view.
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
