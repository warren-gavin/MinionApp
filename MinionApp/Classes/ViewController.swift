//
//  ViewController.swift
//  MinionApp
//
//  Created by Apokrupto on 21/09/2017.
//  Copyright © 2017 Apokrupto. All rights reserved.
//

import UIKit

struct Minion {
    let name: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let model: [Minion] = [
        Minion(name: "bob"),
        Minion(name: "kevin"),
        Minion(name: "mel"),
        Minion(name: "phil"),
        Minion(name: "stuart")
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = (sender as! IndexPath)
        let minion = model[indexPath.row]
        
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.minion = minion
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let minion = model[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MinionCell") as! MinionTableViewCell
        
        cell.minionImageView.image = UIImage(named: minion.name)
        cell.minionLabelView.text = minion.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "show", sender: indexPath)
    }
}
