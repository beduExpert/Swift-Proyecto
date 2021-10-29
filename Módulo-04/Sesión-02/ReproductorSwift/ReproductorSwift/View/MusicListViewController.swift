//
//  MusicListViewController.swift
//  ReproductorSwift
//
//  Created by Ivan Alejandro Hernandez Sanchez on 25/10/21.
//

import UIKit

class MusicListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var data:[SongDTO] = [
        SongDTO(AlbumImageURL: "1", Artist: "Eagles", SongName: "Hotel california", SongURL: "https://firebasestorage.googleapis.com/v0/b/swift-pruebas.appspot.com/o/Music%2FEagles-Hotel_California_160k.mp3?alt=media&token=921dd6fd-e804-4c3d-9d2d-a81a8ef32ecb"),
        SongDTO(AlbumImageURL: "2", Artist: "ACDC", SongName: "You shook me all night long", SongURL: "https://firebasestorage.googleapis.com/v0/b/swift-pruebas.appspot.com/o/Music%2FACDC-You_Shook_Me_All_Night_Long_160k.mp3?alt=media&token=0712d4db-4a1c-4632-b8a6-113325bca3d1"),
        SongDTO(AlbumImageURL: "3", Artist: "ACDC", SongName: "Thunderstruck", SongURL: "https://firebasestorage.googleapis.com/v0/b/swift-pruebas.appspot.com/o/Music%2FACDC-Thunderstruck_160k.mp3?alt=media&token=cee21c9b-5305-4af5-a28f-c1903ccbeedb"),
        SongDTO(AlbumImageURL: "1", Artist: "ACDC", SongName: "Shoot to thrill", SongURL: "https://firebasestorage.googleapis.com/v0/b/swift-pruebas.appspot.com/o/Music%2FACDC-Shoot_To_Thrill_160k.mp3?alt=media&token=a33630b2-3a36-4032-86a3-384855155880")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    fileprivate func ShowAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
}


extension MusicListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MusicListTableViewCell else {return MusicListTableViewCell()}
                
        let item = data[indexPath.row]
        
        cell.imageAlbum.image = UIImage(named: item.AlbumImageURL)
        cell.songName.text = item.SongName
        cell.artistName.text = item.Artist
        
        let playItem = UIAction(title: "Play", image: UIImage(systemName: "play.fill")) { (action) in
            self.ShowAlert(title: "Alert", message: "The song will start to sound")
        }

        let downloadItem = UIAction(title: "Download", image: UIImage(systemName: "tray.and.arrow.down.fill")) { (action) in
            self.ShowAlert(title: "Song info", message: "Artist: \(item.Artist) \nSong: \(item.SongName)")
        }

        let deleteItem = UIAction(title: "Delete from playlist", image: UIImage(systemName: "delete.left.fill")) { (action) in
            self.ShowAlert(title: "Delete", message: "Song deleted from your playlist")
        }
        
        let menu = UIMenu(title: "Menu", options: .displayInline, children: [playItem , downloadItem , deleteItem])
        
        cell.actionButton.menu = menu
        cell.actionButton.showsMenuAsPrimaryAction = true
        
        return cell
    }
    
    
}
