//
//  DetailViewController.swift
//  UIContainerView
//
//  Created by Nazar Dranhovskyi on 26.09.2021.
//

import UIKit

class DetailViewController: UITableViewController {

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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: String(indexPath.row))
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = parent as? ViewController {
            let trackTitle = imageNameArray[indexPath.row]
            viewController.titleLabel.text = trackTitle
            viewController.imageCover.image = UIImage(named: String(indexPath.row))
        }
    }
}
