//
//  ViewController.swift
//  MyApp
//
//  Created by Ricardo Montesinos on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func `continue`(_ sender: Any) {
        /*
         ¿Qué tipo de variable (objeto) recibe el método como parámetro?
         "sender" es el identificador para el parametro donde se recibe la referencia del objeto que está causando el evento
         
         ¿A qué  tipo de dato se refiere?
         "Any" hace referencia literalmente a cualquier objeto, por lo que este método se puede utilizar para conectar cualquiere control en la vista
         
        */
        let username = username.text
        let password = password.text
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
        if password != nil {
            if password != "" {
                if password!.count >= 10 {
                    print ("todo ok con el password")
                }
                else {
                    print ("el password debe tener al menos 10 caracteres")
                }
            }
            else {
                print ("el password no puede estar vacío")
            }
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

