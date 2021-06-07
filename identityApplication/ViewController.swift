//
//  ViewController.swift
//  identityApplication
//
//  Created by Djino Dissingar on 07/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Interface Builder outlet

    @IBOutlet weak var nomLabel: UITextField!
    
    @IBOutlet weak var ageLabel: UITextField!
    
    @IBOutlet weak var descLabel: UITextField!
    
    
    @IBOutlet weak var resultatLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //interface BUilde Action


    @IBAction func afficherMessage(_ sender: Any) {
        //lorsque le clavier entre
        view.endEditing(true)
        //Vérification de l'existence des interface Outlet
        if nomLabel != nil && ageLabel != nil && descLabel != nil {
            let nom = nomLabel.text!
            let age = ageLabel.text!
            let desc = descLabel.text!
            if let ageRecu = Int(age) {
                resultatLabel.text = " Vous êtes \(nom) et vous avez \(ageRecu) ans, vous avez comme loisirs : \(desc)"
                
            }
        }
    }
    
    
    
    @IBAction func lireMessage(_ sender: Any) {
    }
}

