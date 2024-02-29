//
//  ViewController.swift
//  Adding_A_TextField_To_An_Alert_UIKit
//
//  Created by Sandra Gomez on 2/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: {(textField) in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.myLabel.text = savedText.text
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}



