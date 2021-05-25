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
        print("viewDidLoad function")
           
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function")
        nameText.text = ""   
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

