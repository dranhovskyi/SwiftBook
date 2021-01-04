//
//  ViewController.swift
//  AccessLevelsDemo
//
//  Created by Nazar Dranhovskyi on 04.01.2021.
//

import UIKit

class ViewController : UIViewController {
    
    var property1 = 10
    private let property2 = true
    fileprivate let property3 = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(property1)
        print(property2)
        print(property3)
    }
}

extension ViewController {
    var someIntegerProperty: Int {
        if property3 {
            return 10
        }
        
        return 20
    }
}

class HelperClass {
    let vc = ViewController()
    var someIntegerProperty: Int {
        if vc.property3 {
            return 10
        }
        
        return 20
    }
}



