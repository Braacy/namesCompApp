//
//  ViewController.swift
//  namesCompApp
//
//  Created by Владислав Близнюк on 28.09.2025.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var yourNameTextField: UITextField!
    
    @IBOutlet weak var parthnerNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTextField.text
        destinationVC.secondName = parthnerNameTextField.text
    }

    @IBAction func showResultBtnPressed() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
}

