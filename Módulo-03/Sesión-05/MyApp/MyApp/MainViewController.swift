//
//  MainViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 10/10/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imagen.image = UIImage(systemName: "person.fill")
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
