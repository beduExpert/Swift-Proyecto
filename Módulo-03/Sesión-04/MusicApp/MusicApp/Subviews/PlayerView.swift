//
//  PlayerView.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class PlayerView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var lblSongName: UILabel!
  @IBOutlet weak var lblAlbumName: UILabel!
  @IBOutlet weak var lblSongProgress: UILabel!
  
  // For using in Code
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  // For using in IB
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    Bundle.main.loadNibNamed("PlayerView", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
  }

  @IBAction func play(_ sender: Any) {

  }  
}
