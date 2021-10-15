//
//  AudioPlayerViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 14/10/21.
//

import UIKit

class AudioPlayerViewController: UIViewController {

    var isPlaying = false
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        isPlaying = !(isPlaying)
        if isPlaying {
            print ("Reproduciendo")
        }
        else {
            print ("NO se está Reproduciendo")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let l1=UILabel()
        l1.text="AudioPlayer"
        l1.font=UIFont.systemFont(ofSize: 24)
        l1.autoresizingMask = .flexibleWidth
        l1.translatesAutoresizingMaskIntoConstraints=true
        l1.frame=CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50)
        l1.textAlignment = .center
        self.view.addSubview(l1)
        
        let b1=UIButton(type: .system)
        b1.setTitle("Play", for: .normal)
        b1.autoresizingMask = .flexibleWidth
        b1.translatesAutoresizingMaskIntoConstraints=true
        b1.frame=CGRect(x: 20, y: 100, width: 100, height: 40)
        self.view.addSubview(b1)
        b1.addTarget(self, action: #selector(self.botonPlayTouch(_:)), for: .touchUpInside)
        
        let b2=UIButton(type: .system)
        b2.setTitle("Stop", for: .normal)
        b2.autoresizingMask = .flexibleWidth
        b2.translatesAutoresizingMaskIntoConstraints=true
        b2.frame=CGRect(x: self.view.frame.width-100, y: 100, width: 100, height: 40)
        self.view.addSubview(b2)
        b2.addTarget(self, action: #selector(self.botonStopTouch(_:)), for: .touchUpInside)
        
        let s1=UISlider ()
        s1.autoresizingMask = .flexibleWidth
        s1.translatesAutoresizingMaskIntoConstraints=true
        s1.frame=CGRect(x: 20, y:150, width: self.view.frame.width-40, height: 50)
        self.view.addSubview(s1)
        s1.addTarget(self, action: #selector(self.slider1Touch(_:)), for: .valueChanged)
        
        let l2=UILabel()
        l2.text="Volumen"
        l2.autoresizingMask = .flexibleWidth
        l2.translatesAutoresizingMaskIntoConstraints=true
        l2.frame=CGRect(x: 20, y: 200, width: 100, height: 40)
        self.view.addSubview(l2)

        let s2=UISlider()
        s2.autoresizingMask = .flexibleWidth
        s2.translatesAutoresizingMaskIntoConstraints=true
        s2.frame=CGRect(x: 20, y: 250, width: self.view.frame.width/2, height: 50)
        self.view.addSubview(s2)
        s2.addTarget(self, action: #selector(self.slider2Touch(_:)), for: .valueChanged)
    
        if let laURL = Bundle.main.url(forResource: "stegosaurus-studio", withExtension: ".gif") {
            let elGIF = UIImage.animatedImage(withAnimatedGIFURL: laURL)
            let imgContainer = UIImageView(image: elGIF)
            imgContainer.autoresizingMask = .flexibleWidth
            imgContainer.translatesAutoresizingMaskIntoConstraints=true
            imgContainer.frame=CGRect(x: 0, y: 350, width: self.view.frame.width, height: 150)
            self.view.addSubview(imgContainer)
        }
    }
    
    @objc func botonPlayTouch(_ sender:UIButton!) {
        print("tocaste el botón Play")
    }
    
    @objc func botonStopTouch(_ sender:UIButton!) {
        print("tocaste el botón Stop")
    }
    @objc func slider1Touch(_ sender:UISlider!) {
        print("slider reproducción se ajustó en \(sender.value)")
    }
    
    @objc func slider2Touch(_ sender:UISlider!) {
        print("slider volumen se ajustó en \(sender.value)")
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
