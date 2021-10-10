//
//  ViewController.swift
//  MyApp
//
//  Created by Ricardo Montesinos on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    var tipoError:Int = 0
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func `continue`(_ sender: Any) {
        /*
         ¿Qué tipo de variable (objeto) recibe el método como parámetro?
         "sender" es el identificador para el parametro donde se recibe la referencia del objeto que está causando el evento
         
         ¿A qué  tipo de dato se refiere?
         "Any" hace referencia literalmente a cualquier objeto, por lo que este método se puede utilizar para conectar cualquiere control en la vista
         
        */
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
        
        let name: String = #function
        print (name)
    }
    
    @IBAction func signup(_ sender: Any) {
        let name: String = #function
        print (name)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

