//
//  HomeVC.swift
//  TableViewAndCollectionView
//
//  Created by ADMIN on 13/05/25.
//

import UIKit

class HomeVC: UIViewController , UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = tableView.dequeueReusableCell(withIdentifier: "cell") as! NewTableViewCell
//        tcell.textLabel!.text="apple"
//        tcell.imageView?.image = UIImage(named: "chickenroast")
        tcell.lbl.text = fruits[indexPath.row]
        tcell.imgview.image = UIImage(named: imgs[indexPath.row])
        return tcell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    var fruits = ["apple","banana","grapes","orange"]
    var imgs = ["chickenroast","fishcurry","fishfingers","fishmappas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
