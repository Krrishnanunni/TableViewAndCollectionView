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
    
    var fruits = ["Apple","Banana","Grapes","orange"]
    var fruitsDetails = ["An apple is a round, fleshy fruit with a core containing seeds, typically red, yellow, or green",
                        "A banana is an elongated, curved fruit with a yellow peel when ripe, and soft, sweet flesh",
                        "Grapes are small, oval fruits that grow in clusters on vines. They are botanically berries and belong to the genus Vitis",
                        "An orange is a round citrus fruit with a bright orange peel, known for its juicy, sweet, and tart taste"]
    var imgs = ["chickenroast","fishcurry","fishfingers","fishmappas"]
    
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let DetailFruitsVC = sb.instantiateViewController(withIdentifier: "DetailFruitsVC") as! DetailFruitsVC
        
        DetailFruitsVC.recivedString! = fruits[indexPath.row]
        DetailFruitsVC.recivedDetails = fruitsDetails[indexPath.row]
        DetailFruitsVC.recivedImg = UIImage(named: imgs[indexPath.row])!

        self.navigationController?.pushViewController(DetailFruitsVC, animated: true)
        
        
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
