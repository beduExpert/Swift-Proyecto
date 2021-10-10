//
//  RegisterViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 10/10/21.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var tipoError:Int = 0
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var username: UITextField!
    
    @IBAction func register(_ sender: Any) {
        guard let username = username.text
        else {
            print ("no se puede continuar")
            return
        }
        if username != "" {
            if username.count >= 10 {
                var tieneArroba = false
                for caracter in username {
                    if caracter == "@" {
                        tieneArroba = true
                    }
                }
                if tieneArroba {
                    print ("todo ok con el username")
                }
                else {
                    print ("el nombre de usuario debe ser un correo válido")
                    tipoError = 2
                }
            }
            else {
                print ("el nombre de usuario debe tener al menos 10 caracteres")
            }
        }
        else {
            print ("el nombre de usuario no puede estar vacío")
            tipoError = 1
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
