//
//  ViewController.swift
//  UserDefaults
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    @IBOutlet var mySwitch1: UISwitch!
    @IBOutlet var mySwitch2: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        let list = [1,2,3]
        defaults.setValue(list, forKey: "myList")
    }

    @IBAction func saveStatus(_ sender: Any) {
        defaults.setValue(mySwitch1.isOn, forKey: "switchOn")
    }
    
    @IBAction func readStatus(_ sender: Any) {
        mySwitch2.isOn = defaults.bool(forKey: "switchOn")
    }
    
    @IBAction func readStatus2(_ sender: Any) {
        if let theList = defaults.array(forKey: "myList"){
        print(theList)
        }
    }
}

