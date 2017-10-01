//
//  SecondViewController.swift
//  MinionApp
//
//  Created by Apokrupto on 21/09/2017.
//  Copyright © 2017 Apokrupto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var minion: Minion!
    
    @IBOutlet weak var largeMinionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        largeMinionImageView.image = UIImage(named: minion.name)
    }
}
