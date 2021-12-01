//
//  LoginViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 20/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    // variable para conectar con el viewModel
    var viewModel: LoginViewModel?
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var register: UIButton!
    
    @IBAction func `continue`(_ sender: Any) {
        viewModel?.botonLoginTouch(user: username.text, pass: password.text)
    }
    
    @IBAction func signup(_ sender: Any) {
        performSegue(withIdentifier: "signUp", sender: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "AccentColor")
        label1.textColor = UIColor(named: "MainColor")
        label2.textColor = UIColor(named: "MainColor")
        // personalizar la interfaz usando las extensiones
        self.view.setGradientBackground()
        label1.activateGradientColor = true
        login.customize()
        register.customize()
        username.startInController()
        password.startInController()
        // conectar con el viewModel
        bindViewModel()
    }

    func bindViewModel() {
        viewModel = LoginViewModel()
        viewModel?.mensajeError.bind({ (mensajeError) in
            DispatchQueue.main.async {
                if mensajeError != nil {
                    self.showSimpleAlert(mensajeError!)
                    self.username.errorAnimated()
                    self.password.errorAnimated()
                }
                else {
                    self.goToMainViewController()
                }
            }
        })
    }
     

    
    func goToMainViewController() {
        performSegue(withIdentifier: "loginOK", sender: self)
    }
    
}
