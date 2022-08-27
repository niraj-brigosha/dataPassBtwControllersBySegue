//
//  ViewController.swift
//  dataPassBtwControllers
//
//  Created by Niraj on 25/08/22.
//

import UIKit

class FirstViewController: UIViewController {
    
    var sendDataBack = ""

    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var txtField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1.text = sendDataBack
    }

    @IBAction func button1(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = txtField1.text ?? ""
        }
    }
    
    @IBAction func blueBackground(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
}

