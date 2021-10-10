//
//  RegisterViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 10/10/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var username: UITextField!
    
    @IBAction func register(_ sender: Any) {
        let username = username.text
        if username != nil {
            if username != "" {
                if username!.count >= 10 {
                    print ("todo ok con el username")
                }
                else {
                    print ("el nombre de usuario debe tener al menos 10 caracteres")
                }
            }
            else {
                print ("el nombre de usuario no puede estar vacío")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "AccentColor")
        label1.textColor = UIColor(named: "MainColor")
        label2.textColor = UIColor(named: "MainColor")
        label3.textColor = UIColor(named: "MainColor")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
