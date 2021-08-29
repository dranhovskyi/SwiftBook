//
//  PreviewPage.swift
//  ArtCover
//
//  Created by Nazar Dranhovskyi on 29.08.2021.
//

import UIKit

private let reuseIdentifier = "ArtCover"

class PreviewPage: UICollectionViewController {
    
    let imageNameArray = ["На своём вайбе (feat. Гуф)",
                          "Sad but True",
                          "Просто такая сильная любовь",
                          "BMW",
                          "Зажигать:JoMo",
                          "Rampampam",
                          "Because You Move Me",
                          "Там ревели горы",
                          "Кукла колдуна"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if segue.identifier == "DetailSegue" {
            let cell = sender as! ArtCoverCell
            if let indexPath = self.collectionView!.indexPath(for: cell) {
                let detailsVC = segue.destination as! DetailViewController
                detailsVC.trackTitleString = imageNameArray[indexPath.row]
            }
        }
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCoverCell
    
        cell.image.image = UIImage(named: imageNameArray[indexPath.row])
        
        return cell
    }

}
