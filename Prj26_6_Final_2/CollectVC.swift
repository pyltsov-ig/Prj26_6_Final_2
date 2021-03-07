//
//  CollectVC.swift
//  Prj26_6_Final_2
//
//  Created by ИГОРЬ on 07/03/2021.
//

import UIKit

class CollectVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let animalImages = ["cat0",
                        "cat1",
                        "cat2",
                        "cat3",
                        "cat4",
                        "cat5",
                        "cat6",
                        "cat7",
                        "cat8",
                        "cat9",]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollCell", for: indexPath) as? CollectionViewCell {
            cell.animalImage.image = UIImage(named: animalImages[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }
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
