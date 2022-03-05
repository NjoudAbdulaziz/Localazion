//
//  ViewController.swift
//  localization
//
//  Created by Njoud Alrshidi on 13/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    let titel = NSLocalizedString("Titel", comment: "")
    let message = NSLocalizedString("Message", comment: "")
    let butoonOK = NSLocalizedString("OK", comment: "")
    
  //  @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var signUbBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    @IBOutlet weak var userPasswordLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    let hello = NSLocalizedString("Hello", comment: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = hello
    //    imageView.image = UIImage(named: "1")
        userNameLabel.text = NSLocalizedString("UserName", comment: "")
        userPasswordLabel.text = NSLocalizedString("Pass", comment: "")
        signInBtn.setTitle(NSLocalizedString("Login", comment: ""), for: .normal)
        signUbBtn.setTitle(NSLocalizedString("SignUp", comment: ""), for: .normal)
    }

    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: "Home", sender: nil)
//
//        let alert = UIAlertController(title: titel, message:message, preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: butoonOK, style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func segmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("English")
            userNameLabel.text = "UserName".localizablLanguage(name: "en")
            userPasswordLabel.text = "Pass".localizablLanguage(name: "en")
            signInBtn.setTitle("Login".localizablLanguage(name: "en"), for: .normal)
        case 1:
            print("Arabic")
            userNameLabel.text = "UserName".localizablLanguage(name: "ar")
            userPasswordLabel.text = "Pass".localizablLanguage(name: "ar")
            signInBtn.setTitle("Login".localizablLanguage(name: "ar"), for: .normal)
        default:
            print("Unknown language")
        }
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        performSegue(withIdentifier: "ToSignUpPage", sender: nil)
    }
}
    extension String {
        func localizablLanguage(name:String)-> String {
            let path = Bundle.main.path(forResource: name, ofType: "lproj")
            let bundle = Bundle(path: path!)
            return NSLocalizedString(self ,tableName: nil,bundle: bundle!,value: "" ,comment: "")
        }
        
    }

