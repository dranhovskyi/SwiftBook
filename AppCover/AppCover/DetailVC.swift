//
//  DetailVC.swift
//  AppCover
//
//  Created by Nazar Dranhovskyi on 16.08.2021.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageControl: UIImageView!
    @IBOutlet weak var labelControl: UILabel!
    
    var trackTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageControl.image = UIImage(named: trackTitle)
        labelControl.text = trackTitle
        labelControl.numberOfLines = 0
    }

}
