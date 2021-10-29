//
//  MusicListTableViewCell.swift
//  ReproductorSwift
//
//  Created by Ivan Alejandro Hernandez Sanchez on 25/10/21.
//

import UIKit

class MusicListTableViewCell: UITableViewCell {

    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
