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
    @IBOutlet weak var btn_facebook: UIButton!
    
    @IBAction func facebook(_ sender: Any) {
        btn_facebook.backgroundColor = UIColor(named: "MainColor")
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func register(_ sender: Any) {
        guard let username = username.text
        else {
            print ("no se puede continuar")
            return
        }
        if username != "" {
            let regExp = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", options: [])
            let coincidencias = regExp.matches(in: username, options: [], range: NSRange(location: 0, length: username.count))
            if coincidencias.count == 1 {
                print ("todo ok con el username")
            }
            else {
                print ("el nombre de usuario debe ser un correo válido")
                tipoError = 2
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
