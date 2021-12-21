//
//  PlayListDetailController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 20/11/21.
//

import UIKit

class PlayListDetailController: UIViewController, TracksPickerDelegate, UITableViewDataSource, UITableViewDelegate {
    
    let textField = UITextField()
    let b1 = UIButton(type: .custom)
    let tv = UITableView()
    var tracks = Set<Track>()
    var tracksArray = [Track]()
    
    func addTrack(track: Track) {
        tracks.insert(track)
        tracksArray = Array(tracks)
        tv.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(textField)
        textField.placeholder = "Playlist..."
        textField.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.5)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 50).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.view.addSubview(b1)
        b1.setImage(UIImage(systemName: "plus.rectangle.fill.on.rectangle.fill"), for: .normal)
        b1.translatesAutoresizingMaskIntoConstraints=false
        b1.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 50).isActive = true
        b1.leadingAnchor.constraint(equalTo: textField.trailingAnchor, constant: 10).isActive = true
        b1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        b1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        b1.addTarget(self, action:#selector(showView), for: .touchUpInside)
//        b1.backgroundColor = UIColor.yellow
        
        self.view.addSubview(tv)
        tv.translatesAutoresizingMaskIntoConstraints=false
        tv.topAnchor.constraint(equalTo:textField.bottomAnchor, constant: 20).isActive = true
        tv.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        tv.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        tv.bottomAnchor.constraint(equalTo:view.bottomAnchor, constant: -20).isActive = true
        tv.backgroundColor = .lightGray.withAlphaComponent(0.5)
        tv.separatorColor = UIColor.systemBlue.withAlphaComponent(0.5)
        tv.separatorStyle = .singleLine
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "track")
        tv.dataSource = self
        tv.delegate = self
    }
    
    @objc func showView() {
        let trv = TracksPickerView (frame: CGRect(x: 0, y: self.view.frame.height/2, width: self.view.frame.width, height: self.view.frame.height/2))
        trv.delegate = self
        self.view.addSubview(trv)
    }

    // MARK: - TableView Datasource & Delegate
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         tracksArray.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "track", for: indexPath)
         let track = tracksArray[indexPath.row]
         cell.textLabel?.text = track.title
         return cell
     }
}
