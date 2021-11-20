//
//  PlayButton.swift
//  MyApp
//
//  Created by Jan Zelaznog on 09/11/21.
//

import UIKit

class PlayButton: UIButton {

    var icon: UIImage?
    var secondIcon: UIImage?
    var isPlaying: Bool = false
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = self.frame.width/2
        self.clipsToBounds = true
        self.backgroundColor = .clear
        self.tintColor = .systemGreen
    }
    
    func performTwoStateSelection() {
        self.isPlaying = !isPlaying
        print (isPlaying)
        self.setImage(isPlaying ? icon : secondIcon, for: .normal)
        self.setImage(isPlaying ? icon : secondIcon, for: .highlighted)
    }
    
    func setImage(icon: UIImage?) {
        guard let icon = icon else { return }
        self.icon = icon
        self.setImage(icon, for: .normal)
        self.setImage(icon, for: .highlighted)
    }

}
