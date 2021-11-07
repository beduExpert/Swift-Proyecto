//
//  ViewController.swift
//  MyApp
//
//  Created by Ricardo Montesinos on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    var tipoError:Int = 0
    let model: Registered = Registered()
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    func goToMainViewController() {
       /*
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
       vc!.modalPresentationStyle = .fullScreen
       self.present(vc!, animated: true)
        */
        performSegue(withIdentifier: "loginOK", sender: self)
    }
    
        /*
         ¿Qué tipo de variable (objeto) recibe el método como parámetro?
         "sender" es el identificador para el parametro donde se recibe la referencia del objeto que está causando el evento
         
         ¿A qué  tipo de dato se refiere?
         "Any" hace referencia literalmente a cualquier objeto, por lo que este método se puede utilizar para conectar cualquiere control en la vista
         
        */
    
    @IBAction func `continue`(_ sender: Any) {
        var usernameOk = false
        var passwordOk = false
        guard let username = username.text
        else {
            print ("no se puede continuar")
            return
        }
        guard let password = password.text
        else {
            print ("no se puede continuar")
            return
        }
        if username != "" {
            let regExp = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", options: [])
            let coincidencias = regExp.matches(in: username, options: [], range: NSRange(location: 0, length: username.count))
            if coincidencias.count == 1 {
                print ("todo ok con el username")
                usernameOk = true
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

        if password != "" {
            if password.count >= 10 {
                print ("todo ok con el password")
                passwordOk = true
            }
            else {
                print ("el password debe tener al menos 10 caracteres")
                tipoError = 4
            }
        }
        else {
            print ("el password no puede estar vacío")
            tipoError = 3
        }
        if usernameOk && passwordOk {
            if model.user1.user == username && model.user1.pass == password {
                goToMainViewController()
            }
        }
    }
    
    @IBAction func signup(_ sender: Any) {
        let name: String = #function
        print (name)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let canciones = DataManager.cancionesPorGenero(canciones:misTracks)
        print(canciones)
        self.view.backgroundColor = UIColor(named: "AccentColor")
        label1.textColor = UIColor(named: "MainColor")
        label2.textColor = UIColor(named: "MainColor")
        let name: String = #function
        print (name)
  }

    override func viewWillLayoutSubviews() {
        let name: String = #function
        print (name)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let name: String = #function
        print (name)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let name: String = #function
        print (name)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let name: String = #function
        print (name)
    }
}

