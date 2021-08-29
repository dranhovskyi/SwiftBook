//
//  DetailViewController.swift
//  ArtCover
//
//  Created by Nazar Dranhovskyi on 29.08.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var trackTitle: UILabel!
    
    var trackTitleString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: trackTitleString)
        trackTitle.text = trackTitleString
    }

}
