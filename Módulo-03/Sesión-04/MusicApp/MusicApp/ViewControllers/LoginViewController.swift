//
//  LoginViewController.swift
//  MusicApp
//
//  Created by Jan Zelaznog on 15/11/21.
//  Copyright © 2021 Bedu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtAccount:UITextField!
    @IBOutlet weak var txtPassword:UITextField!
    
    @IBAction func btnLoginTouch (_ sender:UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImageView(image: UIImage(named: "logoBedu"))
        image.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(image)
        image.contentMode = .scaleAspectFit
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10.0).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10.0).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10.0).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        image.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
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
