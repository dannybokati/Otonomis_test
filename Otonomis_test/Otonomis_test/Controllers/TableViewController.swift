//
//  TableViewController.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = dataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = dataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }

}
