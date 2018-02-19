//
//  ViewController.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var CollectionTable: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionTable.dataSource = self
        CollectionTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

