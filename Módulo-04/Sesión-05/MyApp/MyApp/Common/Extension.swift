//
//  Extension.swift
//  MyApp
//
//  Created by Ivan Alejandro Hernandez Sanchez on 28/11/21.
//

import Foundation
import UIKit

extension String {
    func isValidEmail() -> Bool {
        let regExp = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$", options: [])
        let coincidencias = regExp.matches(in: self, options: [], range: NSRange(location: 0, length: self.count))
        
        return coincidencias.count > 0 ? true : false
    }
    
}

extension UIViewController {
    func showSimpleAlert(_ mensaje:String) {
        let alert = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        let action = UIAlertAction(title: "enterado", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
   
    }
}

extension UITextField {
    func errorAnimated() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = 4
        animation.duration = 0.4/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.values = [10, -10]
        self.layer.add(animation, forKey: "shake")
    }
    
    func startInController() {
        self.alpha = 0
        UIView.animate(withDuration: 1, delay: 0.2, animations: {
            self.alpha = 1
        })        
    }
}
