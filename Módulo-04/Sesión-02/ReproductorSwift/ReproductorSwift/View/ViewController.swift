//
//  ViewController.swift
//  ReproductorSwift
//
//  Created by Ivan Alejandro Hernandez Sanchez on 23/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var songSecondsSlider: UISlider!
    
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var fordwardButton: UIButton!
    @IBOutlet weak var backward: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.albumImage.image = UIImage(named: "1")
    }

    
    @IBAction func playPauseAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Play", message: "The song will start", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    @IBAction func nextSongAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Next", message: "The next song will start", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    @IBAction func prevSongAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Previous", message: "The previous song will start", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
}

