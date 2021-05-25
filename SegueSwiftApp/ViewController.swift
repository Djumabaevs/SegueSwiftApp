//
//  ViewController.swift
//  SegueSwiftApp
//
//  Created by Bakyt Dzhumabaev on 23/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstViewlabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "gotoSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    } 
    
}

