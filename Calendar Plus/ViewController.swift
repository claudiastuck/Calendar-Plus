//
//  ViewController.swift
//  Calendar Plus
//
//  Created by  on 5/22/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
                "myCell", for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = UIColor.yellow
        cell.myLabel.text = "Claudia"
       // cell.imageView.image = images[indexPath.row]
        
        return cell
    }


}

