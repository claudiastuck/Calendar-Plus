//
//  ViewController.swift
//  Calendar Plus
//
//  Created by  on 5/22/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//


// hey emma! There are notes written on the MyCollectionViewCell.swift file about what to do
// they are questions mixed with my ideas just read it.  Please DO NOT delete it once you reaad it cause I need it for reference.
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "Novemeber", "December"]
    var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .cyan, .magenta, .red, .orange, .green, .yellow]
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return months.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
                "myCell", for: indexPath) as! MyCollectionViewCell
        cell.backgroundColor = colors[indexPath.row]
        cell.myLabel.text = months[indexPath.row]
       // cell.imageView.image = images[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

}

