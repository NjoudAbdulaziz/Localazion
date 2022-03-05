//
//  SignUpVC.swift
//  localization
//
//  Created by Njoud Alrshidi on 13/06/1443 AH.
//

import UIKit

class SignUpVC: UIViewController {

    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var userPassLbl: UILabel!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLbl.text = NSLocalizedString("UserName", comment: "")
        userPassLbl.text = NSLocalizedString("Password", comment: "")
        signUpBtn.setTitle(NSLocalizedString("SignUp", comment: ""), for: .normal)

    }
    
    @IBAction func signUpBtnClicked(_ sender: Any) {
        performSegue(withIdentifier: "Home", sender: nil)

    }
    

}
