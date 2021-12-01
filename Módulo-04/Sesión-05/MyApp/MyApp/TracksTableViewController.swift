//
//  TracksTableViewController.swift
//  MyApp
//
//  Created by Jan Zelaznog on 13/10/21.
//

import UIKit

class TracksTableViewController: UITableViewController, ButtonOnCellDelegate {
    
    var _myTracks = [Track]()
    
    func buttonTouchedOnCell(aCell: UITableViewCell) {
        print ("touch")
        let apvc = AudioPlayerViewController()
        self.present(apvc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = .black
        self.tableView.register(TrackTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        self.tableView.rowHeight = 80;
        
        DownloadManager.shared.startDownload(url: URL(string: "https://speed.hetzner.de/100MB.bin")!)
        
        
        _myTracks = misTracks
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateTable(_:)),
                                               name: NSNotification.Name("updateTable"),
                                               object: nil)
        
        let _ = Timer.scheduledTimer(withTimeInterval: 30.0, repeats: true) { timer in
            NotificationCenter.default.post(name: NSNotification.Name("updateTable"), object: nil)
        }
    }
    
    @objc func updateTable(_ notification: Notification) {
        
        _myTracks.append(Track(title: "Nueva cancion", artist: "Nuevo artista", album: "Nuevo album", song_id: "0", genre: "Genero", duration: "123"))
        tableView.reloadData()
    }

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _myTracks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TrackTableViewCell
        let track = _myTracks[indexPath.row]
        cell.backgroundColor = .clear
        
        cell.track = track
        cell.parent = self
                
        cell.setValues()
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
