//
//  LoginViewModel.swift
//  MyApp
//
//  Created by Jan Zelaznog on 20/11/21.
//

import Foundation

class LoginViewModel {
    var mensajeError = Dynamic(String?(""))
    let model: Registered = Registered()
    
    func botonLoginTouch(user:String?, pass:String?) {
        var usernameOk = false
        var passwordOk = false
        guard let username = user
        else {
            mensajeError.value = "No se encontró el nombre de usuario o el password"
            return
        }
        guard let password = pass
        else {
            mensajeError.value = "No se encontró el nombre de usuario o el password"
            return
        }
        var mensaje:String?
        if username != "" {
            
            if username.isValidEmail() {
                usernameOk = true
            }
            else {
                mensaje = "El nombre de usuario debe ser un correo válido"
            }
        }
        else {
            mensaje = "El nombre de usuario no puede estar vacío"
        }

        if password != "" {
            if password.count >= 10 {
                passwordOk = true
            }
            else {
                print ("")
                mensaje = "El password debe tener al menos 10 caracteres"
            }
        }
        else {
            mensaje = "El password no puede estar vacío"
        }
        if usernameOk && passwordOk {
            if model.user1.user == username && model.user1.pass == password {
                mensaje = nil
            }
            else {
                mensaje = "No autorizado. El user o el pass son incorrectos"
            }
        }
        mensajeError.value = mensaje
    }
}
