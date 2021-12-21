//
//  TracksPickerView.swift
//  MyApp
//
//  Created by Jan Zelaznog on 20/11/21.
//

import UIKit

protocol TracksPickerDelegate {
    func addTrack(track: Track)
}

class TracksPickerView: UIView, UIPickerViewDelegate, UIPickerViewDataSource {
    var delegate:TracksPickerDelegate?
    let UIPicker: UIPickerView = UIPickerView()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return misTracks.count
    }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let rowStr = misTracks[row]
        return rowStr.title
    }
        
    override func draw(_ rect: CGRect) {
        let dimension = 35
        let b1 = UIButton(type: .custom)
        b1.setImage(UIImage(systemName: "x.circle.fill"), for: .normal)
        b1.tintColor = .red
        b1.frame = CGRect(x: 3, y: 3, width: dimension, height: dimension)
        self.addSubview(b1)
        b1.addTarget(self, action:#selector(close), for: .touchUpInside)
        let b2 = UIButton(type: .custom)
        b2.setImage(UIImage(systemName: "cross.circle.fill"), for: .normal)
        b2.tintColor = .green
        b2.frame = CGRect(x:Int(rect.width) - (dimension + 3), y: 3, width: dimension, height: dimension)
        self.addSubview(b2)
        b2.addTarget(self, action:#selector(add), for: .touchUpInside)
        
        UIPicker.frame = CGRect(x: 0, y: 30, width: rect.width, height: rect.height-30)
        UIPicker.delegate = self
        UIPicker.dataSource = self
        self.addSubview(UIPicker)
    }
    
    @objc func close () {
        self.removeFromSuperview()
    }
    
    @objc func add () {
        if delegate != nil {
            let index = UIPicker.selectedRow(inComponent: 0)
            let track = misTracks[index]
            delegate?.addTrack(track: track)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = .lightGray
      }
}
