//
//  SecondViewController.swift
//  dataPassBtwControllers
//
//  Created by Niraj on 25/08/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var data: String = ""

    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var txtField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl2.text = data
    }
    
    @IBAction func button2(_ sender: Any) {
        performSegue(withIdentifier: "sendDataBackward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataBackward" {
            let firstVC = segue.destination as! FirstViewController
            firstVC.sendDataBack = txtField2.text ?? ""
        }
    }
    
}
