//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Nazar Dranhovskyi on 09.08.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String!
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        secondLabel.text = "Hello, \(login)"
    }
}
