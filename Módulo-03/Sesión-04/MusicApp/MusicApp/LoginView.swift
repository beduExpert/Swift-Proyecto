//
//  LoginView.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class LoginView: UIView {
  
  @IBOutlet var contentView: UIView!
  @IBOutlet weak var tfUserName: UITextField!
  @IBOutlet weak var tfPassword: UITextField!
  
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
    Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
  }
  
  @IBAction func login(_ sender: Any) {
  }

}
